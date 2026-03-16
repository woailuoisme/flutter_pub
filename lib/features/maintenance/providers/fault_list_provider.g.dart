// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fault_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(FaultListNotifier)
final faultListProvider = FaultListNotifierFamily._();

final class FaultListNotifierProvider
    extends $AsyncNotifierProvider<FaultListNotifier, List<FaultRecordModel>> {
  FaultListNotifierProvider._({
    required FaultListNotifierFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'faultListProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$faultListNotifierHash();

  @override
  String toString() {
    return r'faultListProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  FaultListNotifier create() => FaultListNotifier();

  @override
  bool operator ==(Object other) {
    return other is FaultListNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$faultListNotifierHash() => r'ddbb8dd2f3e382b914ad1f67eb70b355690c40e3';

final class FaultListNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          FaultListNotifier,
          AsyncValue<List<FaultRecordModel>>,
          List<FaultRecordModel>,
          FutureOr<List<FaultRecordModel>>,
          String
        > {
  FaultListNotifierFamily._()
    : super(
        retry: null,
        name: r'faultListProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  FaultListNotifierProvider call(String machineId) =>
      FaultListNotifierProvider._(argument: machineId, from: this);

  @override
  String toString() => r'faultListProvider';
}

abstract class _$FaultListNotifier
    extends $AsyncNotifier<List<FaultRecordModel>> {
  late final _$args = ref.$arg as String;
  String get machineId => _$args;

  FutureOr<List<FaultRecordModel>> build(String machineId);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<AsyncValue<List<FaultRecordModel>>, List<FaultRecordModel>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<FaultRecordModel>>,
                List<FaultRecordModel>
              >,
              AsyncValue<List<FaultRecordModel>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
