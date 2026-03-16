import 'package:lunchbox_hub/core/constants/app_constants.dart';
import 'package:lunchbox_hub/core/utils/mock_data.dart';
import 'package:lunchbox_hub/features/agent/datasources/agent_rest_client.dart';
import 'package:lunchbox_hub/features/agent/entities/agent_machine_model.dart';
import 'package:lunchbox_hub/features/agent/entities/order_model.dart';
import 'package:lunchbox_hub/features/agent/entities/revenue_stats_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'agent_repository.g.dart';

@Riverpod(keepAlive: true)
AgentRepository agentRepository(Ref ref) {
  return AgentRepository(ref.watch(agentRestClientProvider));
}

class AgentRepository {
  AgentRepository(this._client);

  final AgentRestClient _client;

  Future<List<AgentMachineModel>> getAgentMachines() async {
    if (AppConstants.useTestMode) {
      await Future<void>.delayed(const Duration(milliseconds: 500));
      return MockData.getAgentMachines();
    }
    final response = await _client.getAgentMachines();
    if (response.success && response.data != null) return response.data!;
    throw response.message;
  }

  Future<List<OrderModel>> getMachineOrders({
    required String machineId,
    required int page,
    required int perPage,
  }) async {
    if (AppConstants.useTestMode) {
      await Future<void>.delayed(const Duration(milliseconds: 500));
      return MockData.getMachineOrders(machineId);
    }
    final response = await _client.getMachineOrders(machineId, page, perPage);
    if (response.success && response.data != null) return response.data!;
    throw response.message;
  }

  Future<RevenueStatsModel> getDashboardStats({required String period}) async {
    if (AppConstants.useTestMode) {
      await Future<void>.delayed(const Duration(milliseconds: 500));
      return MockData.getRevenueStats();
    }
    final response = await _client.getDashboardStats(period);
    if (response.success && response.data != null) return response.data!;
    throw response.message;
  }

  Future<RevenueStatsModel> getMachineStats({
    required String machineId,
    required String period,
  }) async {
    if (AppConstants.useTestMode) {
      await Future<void>.delayed(const Duration(milliseconds: 500));
      return MockData.getRevenueStats();
    }
    final response = await _client.getMachineStats(machineId, period);
    if (response.success && response.data != null) return response.data!;
    throw response.message;
  }
}
