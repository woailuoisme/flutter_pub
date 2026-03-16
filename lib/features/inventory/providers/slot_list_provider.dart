import 'package:lunchbox_hub/features/inventory/entities/slot_model.dart';
import 'package:lunchbox_hub/features/inventory/repositories/inventory_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'slot_list_provider.g.dart';

@riverpod
class SlotListNotifier extends _$SlotListNotifier {
  @override
  FutureOr<List<SlotModel>> build(String machineId) async {
    return ref.read(inventoryRepositoryProvider).getMachineSlots(machineId);
  }
}
