import 'package:lunchbox_hub/features/maintenance/entities/fault_record_model.dart';
import 'package:lunchbox_hub/features/maintenance/repositories/maintenance_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'fault_list_provider.g.dart';

@riverpod
class FaultListNotifier extends _$FaultListNotifier {
  static const int _pageSize = 20;

  @override
  FutureOr<List<FaultRecordModel>> build(String machineId) async {
    return ref
        .read(maintenanceRepositoryProvider)
        .getMachineFaults(machineId: machineId, page: 1, perPage: _pageSize);
  }
}
