import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:lunchbox_hub/core/widgets/empty_widget.dart';
import 'package:lunchbox_hub/features/inventory/providers/slot_list_provider.dart';
import 'package:lunchbox_hub/features/inventory/providers/slot_update_provider.dart';
import 'package:lunchbox_hub/features/inventory/providers/slot_update_state.dart';
import 'package:lunchbox_hub/features/inventory/widgets/slot_list_item.dart';
import 'package:lunchbox_hub/features/inventory/widgets/slot_quantity_edit_dialog.dart';
import 'package:lunchbox_hub/i18n/translations.g.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:toastification/toastification.dart';

class StockerSlotListScreen extends ConsumerStatefulWidget {
  const StockerSlotListScreen({super.key, required this.machineId});

  final String machineId;

  @override
  ConsumerState<StockerSlotListScreen> createState() =>
      _StockerSlotListScreenState();
}

class _StockerSlotListScreenState extends ConsumerState<StockerSlotListScreen> {
  @override
  Widget build(BuildContext context) {
    final slotsAsync = ref.watch(slotListProvider(widget.machineId));

    ref.listen(slotUpdateProvider, (previous, next) {
      if (next.status == SlotUpdateStatus.success &&
          previous?.status != SlotUpdateStatus.success) {
        toastification.show(
          context: context,
          type: ToastificationType.success,
          style: ToastificationStyle.fillColored,
          alignment: Alignment.topCenter,
          title: Text(t.inventory.updateSuccess),
          autoCloseDuration: const Duration(seconds: 3),
        );
      } else if (next.status == SlotUpdateStatus.failure &&
          previous?.status != SlotUpdateStatus.failure) {
        toastification.show(
          context: context,
          type: ToastificationType.error,
          style: ToastificationStyle.fillColored,
          alignment: Alignment.topCenter,
          title: Text(t.inventory.updateFailed),
          description: next.errorMessage != null
              ? Text(next.errorMessage!)
              : null,
          autoCloseDuration: const Duration(seconds: 3),
        );
      }
    });

    return Scaffold(
      appBar: AppBar(title: Text(t.inventory.slotList)),
      body: slotsAsync.when(
        loading: () => _buildSkeleton(),
        error: (error, _) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                t.common.loadFailed,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(height: 12.h),
              FilledButton.tonal(
                onPressed: () =>
                    ref.invalidate(slotListProvider(widget.machineId)),
                child: Text(t.common.retry),
              ),
            ],
          ),
        ),
        data: (slots) {
          if (slots.isEmpty) {
            return EmptyWidget(message: t.inventory.emptyState);
          }
          return ListView.builder(
            itemCount: slots.length,
            itemBuilder: (context, index) {
              final slot = slots[index];
              return Slidable(
                key: ValueKey(slot.id),
                endActionPane: ActionPane(
                  motion: const DrawerMotion(),
                  children: [
                    SlidableAction(
                      onPressed: (_) => showDialog<void>(
                        context: context,
                        builder: (_) => SlotQuantityEditDialog(slot: slot),
                      ),
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      foregroundColor: Theme.of(context).colorScheme.onPrimary,
                      icon: Icons.edit,
                      label: t.inventory.editQuantity,
                    ),
                  ],
                ),
                child: SlotListItem(slot: slot),
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildSkeleton() {
    return Skeletonizer(
      child: ListView.builder(
        itemCount: 8,
        itemBuilder: (context, index) => ListTile(
          leading: CircleAvatar(
            child: Container(width: 24.w, height: 14.h, color: Colors.grey),
          ),
          title: Container(width: 120.w, height: 14.h, color: Colors.grey),
          trailing: Container(width: 30.w, height: 18.h, color: Colors.grey),
        ),
      ),
    );
  }
}
