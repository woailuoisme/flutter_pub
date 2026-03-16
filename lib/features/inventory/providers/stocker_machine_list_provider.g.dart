// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stocker_machine_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(StockerMachineListNotifier)
final stockerMachineListProvider = StockerMachineListNotifierProvider._();

final class StockerMachineListNotifierProvider
    extends
        $AsyncNotifierProvider<
          StockerMachineListNotifier,
          List<StockerMachineModel>
        > {
  StockerMachineListNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'stockerMachineListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$stockerMachineListNotifierHash();

  @$internal
  @override
  StockerMachineListNotifier create() => StockerMachineListNotifier();
}

String _$stockerMachineListNotifierHash() =>
    r'2470cda71a9e77dcc4cda4b834741a3b865102be';

abstract class _$StockerMachineListNotifier
    extends $AsyncNotifier<List<StockerMachineModel>> {
  FutureOr<List<StockerMachineModel>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<StockerMachineModel>>,
              List<StockerMachineModel>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<StockerMachineModel>>,
                List<StockerMachineModel>
              >,
              AsyncValue<List<StockerMachineModel>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
