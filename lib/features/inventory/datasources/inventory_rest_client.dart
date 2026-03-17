import 'package:dio/dio.dart';
import 'package:lunchbox_hub/core/network/dio_provider.dart';
import 'package:lunchbox_hub/core/network/response/api_response.dart';
import 'package:lunchbox_hub/features/inventory/entities/slot_model.dart';
import 'package:lunchbox_hub/features/inventory/entities/stocker_machine_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'inventory_rest_client.g.dart';

@Riverpod(keepAlive: true)
InventoryRestClient inventoryRestClient(Ref ref) {
  return InventoryRestClient(ref.watch(dioProvider));
}

@RestApi()
abstract class InventoryRestClient {
  factory InventoryRestClient(Dio dio, {String baseUrl}) = _InventoryRestClient;

  /// 获取补货员负责的机器列表（含库存摘要）
  @GET('/api/v2/admin/stocker/machines')
  Future<ApiResponse<List<StockerMachineModel>>> getStockerMachines();

  /// 获取指定机器的所有货道
  @GET('/api/v2/admin/stocker/machines/{machineId}/slots')
  Future<ApiResponse<List<SlotModel>>> getMachineSlots(
    @Path('machineId') String machineId,
  );

  /// 更新指定货道的货物数量
  @PUT('/api/v2/admin/stocker/machines/{machineId}/slots/{slotId}')
  Future<ApiResponse<SlotModel>> updateSlotQuantity(
    @Path('machineId') String machineId,
    @Path('slotId') String slotId,
    @Body() Map<String, dynamic> body,
  );
}
