import 'package:gordon_ferguson_app/app/features/settings/data/shared_preferences.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'text_size_controller.g.dart';

@Riverpod(keepAlive: true)
class TextSizeController extends _$TextSizeController {
  double build() {
    final prefs = ref.watch(sharedPreferencesProvider).requireValue;
    return prefs.getDouble(textSizeKey) ?? 1.0;
  }

  static const String textSizeKey = 'textSize';
  static const double maxTextSize = 2.3;
  static const double minTextSize = 0.8;

  Future<void> _save() async {
    final prefs = ref.read(sharedPreferencesProvider);
    await prefs.requireValue.setDouble(textSizeKey, state);
  }

  void increase() {
    state *= 1.28;
    _save();
  }

  void decrease() {
    state *= 0.78125;
    _save();
  }
}
