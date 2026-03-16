// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_machine_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AgentMachineListNotifier)
final agentMachineListProvider = AgentMachineListNotifierProvider._();

final class AgentMachineListNotifierProvider
    extends
        $AsyncNotifierProvider<
          AgentMachineListNotifier,
          List<AgentMachineModel>
        > {
  AgentMachineListNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'agentMachineListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$agentMachineListNotifierHash();

  @$internal
  @override
  AgentMachineListNotifier create() => AgentMachineListNotifier();
}

String _$agentMachineListNotifierHash() =>
    r'ed3db593eb2321e47764f01e2cc6978272b1333e';

abstract class _$AgentMachineListNotifier
    extends $AsyncNotifier<List<AgentMachineModel>> {
  FutureOr<List<AgentMachineModel>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<AgentMachineModel>>,
              List<AgentMachineModel>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<AgentMachineModel>>,
                List<AgentMachineModel>
              >,
              AsyncValue<List<AgentMachineModel>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
