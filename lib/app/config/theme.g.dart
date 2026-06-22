// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(theme)
final themeProvider = ThemeProvider._();

final class ThemeProvider
    extends $FunctionalProvider<WpaTheme, WpaTheme, WpaTheme>
    with $Provider<WpaTheme> {
  ThemeProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'themeProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$themeHash();

  @$internal
  @override
  $ProviderElement<WpaTheme> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  WpaTheme create(Ref ref) {
    return theme(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(WpaTheme value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<WpaTheme>(value),
    );
  }
}

String _$themeHash() => r'222803f91512e5cc48218ce0717629797d30df20';
