import 'package:lunchbox_hub/features/agent/entities/order_model.dart';
import 'package:lunchbox_hub/features/agent/repositories/agent_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'agent_order_list_provider.g.dart';

@riverpod
class AgentOrderListNotifier extends _$AgentOrderListNotifier {
  static const _pageSize = 20;

  @override
  FutureOr<List<OrderModel>> build(String machineId) async {
    return ref
        .read(agentRepositoryProvider)
        .getMachineOrders(machineId: machineId, page: 1, perPage: _pageSize);
  }
}
