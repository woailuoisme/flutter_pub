// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ObjectBox Store Provider
/// 该 Provider 在 main.dart 中被 override 注入初始化后的实例

@ProviderFor(databaseService)
final databaseServiceProvider = DatabaseServiceProvider._();

/// ObjectBox Store Provider
/// 该 Provider 在 main.dart 中被 override 注入初始化后的实例

final class DatabaseServiceProvider
    extends $FunctionalProvider<Store, Store, Store>
    with $Provider<Store> {
  /// ObjectBox Store Provider
  /// 该 Provider 在 main.dart 中被 override 注入初始化后的实例
  DatabaseServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'databaseServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$databaseServiceHash();

  @$internal
  @override
  $ProviderElement<Store> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Store create(Ref ref) {
    return databaseService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Store value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Store>(value),
    );
  }
}

String _$databaseServiceHash() => r'bb704e60c99d7da1e6557f4277cfe0b9a80a4d13';
