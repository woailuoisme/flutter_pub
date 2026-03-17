import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lunchbox_hub/core/theme/design_tokens.dart';
import 'package:lunchbox_hub/core/widgets/card_widgets/premium_card.dart';
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
      backgroundColor: Colors.transparent,
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
    );
  }

  Widget _buildSkeleton() {
    return Skeletonizer(
      child: ListView.builder(
        itemCount: 10,
        padding: EdgeInsets.symmetric(vertical: AppDesignTokens.spacingS),
        itemBuilder: (context, index) => PremiumCard(
          margin: EdgeInsets.symmetric(
            horizontal: AppDesignTokens.spacingM,
            vertical: AppDesignTokens.spacingXS,
          ),
          padding: EdgeInsets.all(AppDesignTokens.spacingM),
          child: Row(
            children: [
              Container(width: 44.w, height: 44.w, color: Colors.grey),
              SizedBox(width: AppDesignTokens.spacingM),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(width: 120.w, height: 16.h, color: Colors.grey),
                    SizedBox(height: 4.h),
                    Container(width: 80.w, height: 10.h, color: Colors.grey),
                  ],
                ),
              ),
              Container(width: 40.w, height: 30.h, color: Colors.grey),
            ],
          ),
        ),
      ),
    );
  }
}
