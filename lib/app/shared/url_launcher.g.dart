// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'url_launcher.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(launch)
final launchProvider = LaunchFamily._();

final class LaunchProvider
    extends $FunctionalProvider<AsyncValue<void>, void, FutureOr<void>>
    with $FutureModifier<void>, $FutureProvider<void> {
  LaunchProvider._({
    required LaunchFamily super.from,
    required String? super.argument,
  }) : super(
         retry: null,
         name: r'launchProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$launchHash();

  @override
  String toString() {
    return r'launchProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<void> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<void> create(Ref ref) {
    final argument = this.argument as String?;
    return launch(ref, url: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is LaunchProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$launchHash() => r'4d5d6efd7023d8d1884498342848b79983eb9982';

final class LaunchFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<void>, String?> {
  LaunchFamily._()
    : super(
        retry: null,
        name: r'launchProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  LaunchProvider call({String? url}) =>
      LaunchProvider._(argument: url, from: this);

  @override
  String toString() => r'launchProvider';
}
