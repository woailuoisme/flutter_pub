import 'dart:async';

import 'package:lunchbox_hub/features/agent/entities/agent_machine_model.dart';
import 'package:lunchbox_hub/features/agent/repositories/agent_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'agent_machine_list_provider.g.dart';

@riverpod
class AgentMachineListNotifier extends _$AgentMachineListNotifier {
  @override
  FutureOr<List<AgentMachineModel>> build() async {
    return ref.read(agentRepositoryProvider).getAgentMachines();
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => ref.read(agentRepositoryProvider).getAgentMachines(),
    );
  }
}
