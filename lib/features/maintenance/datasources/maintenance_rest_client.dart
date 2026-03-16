import 'package:dio/dio.dart';
import 'package:lunchbox_hub/core/network/dio_provider.dart';
import 'package:lunchbox_hub/core/network/response/api_response.dart';
import 'package:lunchbox_hub/features/maintenance/entities/fault_record_model.dart';
import 'package:lunchbox_hub/features/maintenance/entities/maintainer_machine_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'maintenance_rest_client.g.dart';

@Riverpod(keepAlive: true)
MaintenanceRestClient maintenanceRestClient(Ref ref) {
  return MaintenanceRestClient(ref.watch(dioProvider));
}

@RestApi()
abstract class MaintenanceRestClient {
  factory MaintenanceRestClient(Dio dio, {String baseUrl}) =
      _MaintenanceRestClient;

  /// 获取维护员负责的机器列表（含维修统计）
  @GET('/api/v1/maintainer/machines')
  Future<ApiResponse<List<MaintainerMachineModel>>> getMaintainerMachines();

  /// 获取指定机器的故障记录列表（倒序分页）
  @GET('/api/v1/maintainer/machines/{machineId}/faults')
  Future<ApiResponse<List<FaultRecordModel>>> getMachineFaults(
    @Path('machineId') String machineId,
    @Query('page') int page,
    @Query('per_page') int perPage,
  );
}
