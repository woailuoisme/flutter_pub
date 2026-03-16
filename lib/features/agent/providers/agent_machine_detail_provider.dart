import 'package:lunchbox_hub/features/agent/entities/revenue_stats_model.dart';
import 'package:lunchbox_hub/features/agent/providers/agent_dashboard_state.dart';
import 'package:lunchbox_hub/features/agent/repositories/agent_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'agent_machine_detail_provider.g.dart';

@riverpod
class AgentMachineDetailNotifier extends _$AgentMachineDetailNotifier {
  @override
  AgentDashboardState build(String machineId) => const AgentDashboardState();

  Future<void> loadStats() async {
    state = state.copyWith(stats: const AsyncLoading());
    state = state.copyWith(
      stats: await AsyncValue.guard(
        () => ref
            .read(agentRepositoryProvider)
            .getMachineStats(
              machineId: machineId,
              period: state.selectedPeriod.name,
            ),
      ),
    );
  }

  void changePeriod(TimePeriod period) {
    state = state.copyWith(selectedPeriod: period);
    loadStats();
  }
}
