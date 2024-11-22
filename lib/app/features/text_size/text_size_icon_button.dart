import 'package:flutter/material.dart';
import 'package:gordon_ferguson_app/app/features/text_size/text_size_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TextSizeIconButton extends ConsumerWidget {
  const TextSizeIconButton({
    super.key,
    this.isIncrease = true,
  });

  final bool isIncrease;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textSize = ref.watch(textSizeControllerProvider);
    final enabled = (isIncrease && textSize < TextSizeController.maxTextSize) ||
        (!isIncrease && textSize > TextSizeController.minTextSize);

    return IconButton(
      onPressed: enabled
          ? isIncrease
              ? ref.read(textSizeControllerProvider.notifier).increase
              : ref.read(textSizeControllerProvider.notifier).decrease
          : null,
      icon: Icon(
        isIncrease ? Icons.text_increase_rounded : Icons.text_decrease_rounded,
        size: 36,
      ),
    );
  }
}
