import 'package:material_ui/material_ui.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lunchbox_hub/core/theme/design_tokens.dart';
import 'package:lunchbox_hub/core/widgets/empty_widget.dart';
import 'package:lunchbox_hub/features/inventory/entities/slot_model.dart';
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
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final slotsAsync = ref.watch(slotListProvider(widget.machineId));

    ref.listen(slotUpdateProvider, (previous, next) {
      if (next.status == SlotUpdateStatus.success &&
          previous?.status != SlotUpdateStatus.success) {
        toastification.show(
          context: context,
          type: ToastificationType.success,
          style: ToastificationStyle.minimal,
          alignment: Alignment.topCenter,
          title: Text(t.inventory.updateSuccess),
          autoCloseDuration: const Duration(seconds: 3),
        );
      } else if (next.status == SlotUpdateStatus.failure &&
          previous?.status != SlotUpdateStatus.failure) {
        toastification.show(
          context: context,
          type: ToastificationType.error,
          style: ToastificationStyle.minimal,
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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(t.inventory.slotList),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: AppDesignTokens.surfaceGradient(context),
        ),
        child: SafeArea(
          child: slotsAsync.when(
            loading: () => _buildSkeleton(),
            error: (error, _) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(t.common.loadFailed, style: theme.textTheme.bodyLarge),
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
              return RefreshIndicator(
                onRefresh: () async {
                  ref.invalidate(slotListProvider(widget.machineId));
                  return ref.read(slotListProvider(widget.machineId).future);
                },
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(
                    vertical: AppDesignTokens.spacingS,
                  ),
                  itemCount: slots.length,
                  itemBuilder: (context, index) {
                    final slot = slots[index];
                    return SlotListItem(
                          slot: slot,
                          onEdit: () {
                            showDialog<void>(
                              context: context,
                              builder: (context) => SlotQuantityEditDialog(
                                slot: slot,
                                onConfirm: (quantity) {
                                  ref
                                      .read(slotUpdateProvider.notifier)
                                      .updateQuantity(
                                        machineId: widget.machineId,
                                        slotId: slot.id,
                                        quantity: quantity,
                                      );
                                },
                              ),
                            );
                          },
                        )
                        .animate(delay: (50 * index).ms)
                        .fadeIn(duration: 400.ms)
                        .slideX(begin: 0.1, end: 0);
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildSkeleton() {
    return Skeletonizer(
      child: ListView.builder(
        itemCount: 10,
        padding: EdgeInsets.symmetric(vertical: AppDesignTokens.spacingS),
        itemBuilder: (context, index) => SlotListItem(
          slot: SlotModel(
            id: 'skeleton-$index',
            machineId: '',
            slotNumber: '${(index / 5).floor() + 1}-${index % 5 + 1}',
            productName: 'Product Name Placeholder',
            quantity: 10,
            updatedAt: '2024-03-24 10:00:00',
          ),
        ),
      ),
    );
  }
}
