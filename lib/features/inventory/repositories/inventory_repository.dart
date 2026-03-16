import 'package:lunchbox_hub/core/constants/app_constants.dart';
import 'package:lunchbox_hub/core/utils/mock_data.dart';
import 'package:lunchbox_hub/features/inventory/datasources/inventory_rest_client.dart';
import 'package:lunchbox_hub/features/inventory/entities/slot_model.dart';
import 'package:lunchbox_hub/features/inventory/entities/stocker_machine_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'inventory_repository.g.dart';

@Riverpod(keepAlive: true)
InventoryRepository inventoryRepository(Ref ref) {
  return InventoryRepository(ref.watch(inventoryRestClientProvider));
}

class InventoryRepository {
  InventoryRepository(this._client);

  final InventoryRestClient _client;

  Future<List<StockerMachineModel>> getStockerMachines() async {
    if (AppConstants.useTestMode) {
      await Future<void>.delayed(const Duration(milliseconds: 500));
      return MockData.getStockerMachines();
    }
    final response = await _client.getStockerMachines();
    if (response.success && response.data != null) return response.data!;
    throw response.message;
  }

  Future<List<SlotModel>> getMachineSlots(String machineId) async {
    if (AppConstants.useTestMode) {
      await Future<void>.delayed(const Duration(milliseconds: 500));
      return MockData.getMachineSlots(machineId);
    }
    final response = await _client.getMachineSlots(machineId);
    if (response.success && response.data != null) return response.data!;
    throw response.message;
  }

  Future<SlotModel> updateSlotQuantity({
    required String machineId,
    required String slotId,
    required int quantity,
  }) async {
    if (AppConstants.useTestMode) {
      await Future<void>.delayed(const Duration(milliseconds: 500));
      return MockData.getMachineSlots(
        machineId,
      ).first.copyWith(id: slotId, quantity: quantity);
    }
    final response = await _client.updateSlotQuantity(machineId, slotId, {
      'quantity': quantity,
    });
    if (response.success && response.data != null) return response.data!;
    throw response.message;
  }
}
