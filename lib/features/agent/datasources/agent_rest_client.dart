import 'package:dio/dio.dart';
import 'package:lunchbox_hub/core/network/dio_provider.dart';
import 'package:lunchbox_hub/core/network/response/api_response.dart';
import 'package:lunchbox_hub/features/agent/entities/agent_machine_model.dart';
import 'package:lunchbox_hub/features/agent/entities/order_model.dart';
import 'package:lunchbox_hub/features/agent/entities/revenue_stats_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'agent_rest_client.g.dart';

@Riverpod(keepAlive: true)
AgentRestClient agentRestClient(Ref ref) {
  return AgentRestClient(ref.watch(dioProvider));
}

@RestApi()
abstract class AgentRestClient {
  factory AgentRestClient(Dio dio, {String baseUrl}) = _AgentRestClient;

  /// 获取代理商负责的机器列表（含统计）
  @GET('/api/v1/agent/machines')
  Future<ApiResponse<List<AgentMachineModel>>> getAgentMachines();

  /// 获取指定机器的订单列表（倒序分页）
  @GET('/api/v1/agent/machines/{machineId}/orders')
  Future<ApiResponse<List<OrderModel>>> getMachineOrders(
    @Path('machineId') String machineId,
    @Query('page') int page,
    @Query('per_page') int perPage,
  );

  /// 获取仪表盘汇总统计（所有机器）
  @GET('/api/v1/agent/dashboard/stats')
  Future<ApiResponse<RevenueStatsModel>> getDashboardStats(
    @Query('period') String period,
  );

  /// 获取单台机器统计
  @GET('/api/v1/agent/machines/{machineId}/stats')
  Future<ApiResponse<RevenueStatsModel>> getMachineStats(
    @Path('machineId') String machineId,
    @Query('period') String period,
  );
}
