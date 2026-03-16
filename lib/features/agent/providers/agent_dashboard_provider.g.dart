// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_dashboard_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AgentDashboardNotifier)
final agentDashboardProvider = AgentDashboardNotifierProvider._();

final class AgentDashboardNotifierProvider
    extends $NotifierProvider<AgentDashboardNotifier, AgentDashboardState> {
  AgentDashboardNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'agentDashboardProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$agentDashboardNotifierHash();

  @$internal
  @override
  AgentDashboardNotifier create() => AgentDashboardNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AgentDashboardState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AgentDashboardState>(value),
    );
  }
}

String _$agentDashboardNotifierHash() =>
    r'1d3c2566b1b7afc8938f410865647266e0aeef84';

abstract class _$AgentDashboardNotifier extends $Notifier<AgentDashboardState> {
  AgentDashboardState build();
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
    element.handleCreate(ref, build);
  }
}
