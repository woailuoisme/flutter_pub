// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_machine_detail_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AgentMachineDetailNotifier)
final agentMachineDetailProvider = AgentMachineDetailNotifierFamily._();

final class AgentMachineDetailNotifierProvider
    extends $NotifierProvider<AgentMachineDetailNotifier, AgentDashboardState> {
  AgentMachineDetailNotifierProvider._({
    required AgentMachineDetailNotifierFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'agentMachineDetailProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$agentMachineDetailNotifierHash();

  @override
  String toString() {
    return r'agentMachineDetailProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  AgentMachineDetailNotifier create() => AgentMachineDetailNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AgentDashboardState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AgentDashboardState>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is AgentMachineDetailNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$agentMachineDetailNotifierHash() =>
    r'234e04b918e3cf00eab923b0f503370497542693';

final class AgentMachineDetailNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          AgentMachineDetailNotifier,
          AgentDashboardState,
          AgentDashboardState,
          AgentDashboardState,
          String
        > {
  AgentMachineDetailNotifierFamily._()
    : super(
        retry: null,
        name: r'agentMachineDetailProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  AgentMachineDetailNotifierProvider call(String machineId) =>
      AgentMachineDetailNotifierProvider._(argument: machineId, from: this);

  @override
  String toString() => r'agentMachineDetailProvider';
}

abstract class _$AgentMachineDetailNotifier
    extends $Notifier<AgentDashboardState> {
  late final _$args = ref.$arg as String;
  String get machineId => _$args;

  AgentDashboardState build(String machineId);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AgentDashboardState, AgentDashboardState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AgentDashboardState, AgentDashboardState>,
              AgentDashboardState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
