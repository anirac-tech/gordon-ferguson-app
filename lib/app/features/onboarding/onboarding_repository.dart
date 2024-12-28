import 'package:gordon_ferguson_app/app/features/settings/data/shared_preferences.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'onboarding_repository.g.dart';

class OnboardingRepository {
  const OnboardingRepository({
    required this.preferences,
  });

  final SharedPreferences preferences;

  static const isOnboardedKey = "isOnboarded";

  Future<void> setOnboarded(bool value) async => await preferences.setBool(
        isOnboardedKey,
        value,
      );

  bool getOnboarded() => preferences.getBool(isOnboardedKey) ?? false;
}

@riverpod
OnboardingRepository onboardingRepository(OnboardingRepositoryRef ref) {
  final preferences = ref.watch(sharedPreferencesProvider).requireValue;
  return OnboardingRepository(preferences: preferences);
}
