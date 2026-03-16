import 'package:lunchbox_hub/features/inventory/providers/slot_list_provider.dart';
import 'package:lunchbox_hub/features/inventory/providers/slot_update_state.dart';
import 'package:lunchbox_hub/features/inventory/repositories/inventory_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'slot_update_provider.g.dart';

@riverpod
class SlotUpdateNotifier extends _$SlotUpdateNotifier {
  @override
  SlotUpdateState build() => const SlotUpdateState();

  Future<void> updateQuantity({
    required String machineId,
    required String slotId,
    required int quantity,
  }) async {
    // 客户端验证：非负整数
    if (quantity < 0) {
      state = state.copyWith(
        status: SlotUpdateStatus.failure,
        errorMessage: 'quantity_must_be_non_negative',
      );
      return;
    }
    state = state.copyWith(
      status: SlotUpdateStatus.inProgress,
      errorMessage: null,
    );
    try {
      await ref
          .read(inventoryRepositoryProvider)
          .updateSlotQuantity(
            machineId: machineId,
            slotId: slotId,
            quantity: quantity,
          );
      state = state.copyWith(status: SlotUpdateStatus.success);
      // 刷新货道列表
      ref.invalidate(slotListProvider(machineId));
    } catch (e) {
      state = state.copyWith(
        status: SlotUpdateStatus.failure,
        errorMessage: e.toString(),
      );
    }
  }
}
