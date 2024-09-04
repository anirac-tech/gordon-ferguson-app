// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'url_launcher.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$launchHash() => r'cf1311cbd6789815730cb24cfcfc1c92fc24933a';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [launch].
@ProviderFor(launch)
const launchProvider = LaunchFamily();

/// See also [launch].
class LaunchFamily extends Family {
  /// See also [launch].
  const LaunchFamily();

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies => _allTransitiveDependencies;

  @override
  String? get name => r'launchProvider';

  /// See also [launch].
  LaunchProvider call({
    String? url,
  }) {
    return LaunchProvider(
      url: url,
    );
  }

  @visibleForOverriding
  @override
  LaunchProvider getProviderOverride(
    covariant LaunchProvider provider,
  ) {
    return call(
      url: provider.url,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(FutureOr<void> Function(LaunchRef ref) create) {
    return _$LaunchFamilyOverride(this, create);
  }
}

class _$LaunchFamilyOverride implements FamilyOverride {
  _$LaunchFamilyOverride(this.overriddenFamily, this.create);

  final FutureOr<void> Function(LaunchRef ref) create;

  @override
  final LaunchFamily overriddenFamily;

  @override
  LaunchProvider getProviderOverride(
    covariant LaunchProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// See also [launch].
class LaunchProvider extends AutoDisposeFutureProvider<void> {
  /// See also [launch].
  LaunchProvider({
    String? url,
  }) : this._internal(
          (ref) => launch(
            ref as LaunchRef,
            url: url,
          ),
          from: launchProvider,
          name: r'launchProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$launchHash,
          dependencies: LaunchFamily._dependencies,
          allTransitiveDependencies: LaunchFamily._allTransitiveDependencies,
          url: url,
        );

  LaunchProvider._internal(
    super.create, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.url,
  }) : super.internal();

  final String? url;

  @override
  Override overrideWith(
    FutureOr<void> Function(LaunchRef ref) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: LaunchProvider._internal(
        (ref) => create(ref as LaunchRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        url: url,
      ),
    );
  }

  @override
  ({
    String? url,
  }) get argument {
    return (url: url,);
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _LaunchProviderElement(this);
  }

  LaunchProvider _copyWith(
    FutureOr<void> Function(LaunchRef ref) create,
  ) {
    return LaunchProvider._internal(
      (ref) => create(ref as LaunchRef),
      name: name,
      dependencies: dependencies,
      allTransitiveDependencies: allTransitiveDependencies,
      debugGetCreateSourceHash: debugGetCreateSourceHash,
      from: from,
      url: url,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is LaunchProvider && other.url == url;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, url.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin LaunchRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `url` of this provider.
  String? get url;
}

class _LaunchProviderElement extends AutoDisposeFutureProviderElement<void> with LaunchRef {
  _LaunchProviderElement(super.provider);

  @override
  String? get url => (origin as LaunchProvider).url;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
