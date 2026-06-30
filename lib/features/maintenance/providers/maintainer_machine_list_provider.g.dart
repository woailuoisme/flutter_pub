// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'maintainer_machine_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MaintainerMachineListNotifier)
final maintainerMachineListProvider = MaintainerMachineListNotifierProvider._();

final class MaintainerMachineListNotifierProvider
    extends
        $AsyncNotifierProvider<
          MaintainerMachineListNotifier,
          List<MaintainerMachineModel>
        > {
  MaintainerMachineListNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'maintainerMachineListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$maintainerMachineListNotifierHash();

  @$internal
  @override
  MaintainerMachineListNotifier create() => MaintainerMachineListNotifier();
}

String _$maintainerMachineListNotifierHash() =>
    r'5b6a2d91e8583d5058b6744847b1f8d985850693';

abstract class _$MaintainerMachineListNotifier
    extends $AsyncNotifier<List<MaintainerMachineModel>> {
  FutureOr<List<MaintainerMachineModel>> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<MaintainerMachineModel>>,
              List<MaintainerMachineModel>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<MaintainerMachineModel>>,
                List<MaintainerMachineModel>
              >,
              AsyncValue<List<MaintainerMachineModel>>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
