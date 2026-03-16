import 'package:lunchbox_hub/core/constants/app_constants.dart';
import 'package:lunchbox_hub/core/utils/mock_data.dart';
import 'package:lunchbox_hub/features/maintenance/datasources/maintenance_rest_client.dart';
import 'package:lunchbox_hub/features/maintenance/entities/fault_record_model.dart';
import 'package:lunchbox_hub/features/maintenance/entities/maintainer_machine_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'maintenance_repository.g.dart';

@Riverpod(keepAlive: true)
MaintenanceRepository maintenanceRepository(Ref ref) {
  return MaintenanceRepository(ref.watch(maintenanceRestClientProvider));
}

class MaintenanceRepository {
  MaintenanceRepository(this._client);

  final MaintenanceRestClient _client;

  Future<List<MaintainerMachineModel>> getMaintainerMachines() async {
    if (AppConstants.useTestMode) {
      await Future<void>.delayed(const Duration(milliseconds: 500));
      return MockData.getMaintainerMachines();
    }
    final response = await _client.getMaintainerMachines();
    if (response.success && response.data != null) return response.data!;
    throw response.message;
  }

  Future<List<FaultRecordModel>> getMachineFaults({
    required String machineId,
    required int page,
    required int perPage,
  }) async {
    if (AppConstants.useTestMode) {
      await Future<void>.delayed(const Duration(milliseconds: 500));
      return MockData.getMachineFaults(machineId);
    }
    final response = await _client.getMachineFaults(machineId, page, perPage);
    if (response.success && response.data != null) return response.data!;
    throw response.message;
  }
}
