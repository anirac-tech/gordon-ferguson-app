import 'package:flutter/material.dart';
import 'package:gordon_ferguson_app/app/features/text_size/text_size_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TextSizeIconButton extends ConsumerWidget {
  const TextSizeIconButton({super.key, this.isIncrease = true}) : _isFloating = false;

  const TextSizeIconButton.floating({super.key, this.isIncrease = true}) : _isFloating = true;

  final bool isIncrease;
  final bool _isFloating;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textSize = ref.watch(textSizeControllerProvider);
    final enabled =
        (isIncrease && textSize < TextSizeController.maxTextSize) ||
        (!isIncrease && textSize > TextSizeController.minTextSize);

    final onPressed = enabled
        ? isIncrease
              ? ref.read(textSizeControllerProvider.notifier).increase
              : ref.read(textSizeControllerProvider.notifier).decrease
        : null;
    final tooltip = isIncrease ? 'Increase text size' : 'Decrease text size';
    final icon = Icon(
      isIncrease ? Icons.text_increase_rounded : Icons.text_decrease_rounded,
      size: _isFloating ? 20 : null,
    );

    if (_isFloating) {
      final colorScheme = Theme.of(context).colorScheme;

      return FloatingActionButton.small(
        heroTag: null,
        shape: const CircleBorder(),
        tooltip: tooltip,
        backgroundColor: enabled ? null : colorScheme.onSurface.withAlpha(31),
        foregroundColor: enabled ? null : colorScheme.onSurface.withAlpha(97),
        disabledElevation: 0,
        onPressed: onPressed,
        child: icon,
      );
    }

    return IconButton(tooltip: tooltip, onPressed: onPressed, icon: Icon(icon.icon, size: 36));
  }
}
