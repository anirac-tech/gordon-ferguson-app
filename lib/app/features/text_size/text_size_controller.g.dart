// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_size_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TextSizeController)
final textSizeControllerProvider = TextSizeControllerProvider._();

final class TextSizeControllerProvider
    extends $NotifierProvider<TextSizeController, double> {
  TextSizeControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'textSizeControllerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$textSizeControllerHash();

  @$internal
  @override
  TextSizeController create() => TextSizeController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(double value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<double>(value),
    );
  }
}

String _$textSizeControllerHash() =>
    r'7387770dfe58e7b45a117fb1822ca1dd62ecd1c0';

abstract class _$TextSizeController extends $Notifier<double> {
  double build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<double, double>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<double, double>,
              double,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
