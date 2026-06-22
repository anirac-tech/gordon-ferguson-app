// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(NotificationsService)
final notificationsServiceProvider = NotificationsServiceProvider._();

final class NotificationsServiceProvider
    extends $NotifierProvider<NotificationsService, bool> {
  NotificationsServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'notificationsServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$notificationsServiceHash();

  @$internal
  @override
  NotificationsService create() => NotificationsService();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$notificationsServiceHash() =>
    r'2a41c90474dfd278de7566e5bfe7338bcd5463d4';

abstract class _$NotificationsService extends $Notifier<bool> {
  bool build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<bool, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<bool, bool>,
              bool,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
