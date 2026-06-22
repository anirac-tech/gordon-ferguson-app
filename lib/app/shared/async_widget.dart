import 'package:flutter/material.dart';
import 'package:gordon_ferguson_app/app/config/log_manager.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AsyncValueWidget<T> extends ConsumerWidget {
  const AsyncValueWidget({required this.value, required this.data, super.key});
  final AsyncValue<T> value;
  final Widget Function(T) data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final log = ref.watch(logManagerProvider);
    return value.when(
      data: data,
      loading: () => const Center(child: CircularProgressIndicator.adaptive()),
      error: (error, stackTrace) {
        log.e(error.toString(), error, stackTrace: stackTrace);
        return Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              error.toString(),
              textAlign: TextAlign.center,
              style: theme.textTheme.titleSmall?.copyWith(color: theme.colorScheme.error),
            ),
          ),
        );
      },
    );
  }
}
