import 'package:gordon_ferguson_app/app/config/log_manager.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ErrorSnackbarView<T> extends ConsumerWidget {
  const ErrorSnackbarView({
    super.key,
    required this.provider,
    required this.child,
    this.errorMessage,
  });

  final Widget child;
  final ProviderListenable<AsyncValue<T>> provider;
  final String? errorMessage;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final log = ref.watch(logManagerProvider);
    ref.listen(
      provider,
      (_, state) => state.maybeWhen(
        error: (error, stackTrace) {
          log.e(error.toString(), error, stackTrace: stackTrace);
          ScaffoldMessenger.of(context).removeCurrentSnackBar();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: theme.colorScheme.error,
              content: Row(
                children: [
                  Icon(
                    Icons.error,
                    color: theme.colorScheme.onError,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Flexible(child: Text(errorMessage ?? state.error.toString())),
                ],
              ),
            ),
          );
        },
        orElse: () => null,
      ),
    );
    return child;
  }
}
