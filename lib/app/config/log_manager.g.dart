// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_manager.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(logManager)
final logManagerProvider = LogManagerProvider._();

final class LogManagerProvider
    extends $FunctionalProvider<LogManager, LogManager, LogManager>
    with $Provider<LogManager> {
  LogManagerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'logManagerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$logManagerHash();

  @$internal
  @override
  $ProviderElement<LogManager> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  LogManager create(Ref ref) {
    return logManager(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LogManager value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LogManager>(value),
    );
  }
}

String _$logManagerHash() => r'86dd86831d24719ff55278b6337b77d3f7accaa5';
