import 'package:flutter/material.dart';
import 'package:gordon_ferguson_app/app/config/log_manager.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hooks_riverpod/misc.dart';

class ErrorSnackbarView<T> extends ConsumerStatefulWidget {
  const ErrorSnackbarView({
    required this.provider,
    required this.child,
    super.key,
    this.errorMessage,
  });

  final Widget child;
  final ProviderListenable<AsyncValue<T>> provider;
  final String? errorMessage;

  @override
  ConsumerState<ErrorSnackbarView<T>> createState() => _ErrorSnackbarViewState<T>();
}

class _ErrorSnackbarViewState<T> extends ConsumerState<ErrorSnackbarView<T>> {
  ProviderSubscription<AsyncValue<T>>? _subscription;

  @override
  void initState() {
    super.initState();
    _listen();
  }

  @override
  void didUpdateWidget(covariant ErrorSnackbarView<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.provider != widget.provider) {
      _subscription?.close();
      _listen();
    }
  }

  void _listen() {
    _subscription = ref.listenManual(
      widget.provider,
      (_, state) => _showError(state),
      fireImmediately: true,
    );
  }

  void _showError(AsyncValue<T> state) {
    state.whenOrNull(
      error: (error, stackTrace) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (!mounted) return;
          final theme = Theme.of(context);
          ref.read(logManagerProvider).e(error.toString(), error, stackTrace: stackTrace);
          ScaffoldMessenger.of(context).removeCurrentSnackBar();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: theme.colorScheme.error,
              content: Row(
                children: [
                  Icon(Icons.error, color: theme.colorScheme.onError),
                  const SizedBox(width: 10),
                  Flexible(child: Text(widget.errorMessage ?? state.error.toString())),
                ],
              ),
            ),
          );
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) => widget.child;
}
