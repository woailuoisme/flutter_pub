// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slot_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SlotListNotifier)
final slotListProvider = SlotListNotifierFamily._();

final class SlotListNotifierProvider
    extends $AsyncNotifierProvider<SlotListNotifier, List<SlotModel>> {
  SlotListNotifierProvider._({
    required SlotListNotifierFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'slotListProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$slotListNotifierHash();

  @override
  String toString() {
    return r'slotListProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  SlotListNotifier create() => SlotListNotifier();

  @override
  bool operator ==(Object other) {
    return other is SlotListNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$slotListNotifierHash() => r'5b720c4c742d300990e69c79a8c5938e3a550906';

final class SlotListNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          SlotListNotifier,
          AsyncValue<List<SlotModel>>,
          List<SlotModel>,
          FutureOr<List<SlotModel>>,
          String
        > {
  SlotListNotifierFamily._()
    : super(
        retry: null,
        name: r'slotListProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SlotListNotifierProvider call(String machineId) =>
      SlotListNotifierProvider._(argument: machineId, from: this);

  @override
  String toString() => r'slotListProvider';
}

abstract class _$SlotListNotifier extends $AsyncNotifier<List<SlotModel>> {
  late final _$args = ref.$arg as String;
  String get machineId => _$args;

  FutureOr<List<SlotModel>> build(String machineId);
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<SlotModel>>, List<SlotModel>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<SlotModel>>, List<SlotModel>>,
              AsyncValue<List<SlotModel>>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, () => build(_$args));
  }
}
