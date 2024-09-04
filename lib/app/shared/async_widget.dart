import 'package:wordpress_flutter_app/app/config/log_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AsyncValueWidget<T> extends ConsumerWidget {
  const AsyncValueWidget({super.key, required this.value, required this.data});
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
          child: Text(error.toString(),
              style: theme.textTheme.titleLarge?.copyWith(
                color: theme.colorScheme.error,
              )),
        );
      },
    );
  }
}
