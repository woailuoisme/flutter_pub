import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lunchbox_hub/core/theme/design_tokens.dart';
import 'package:lunchbox_hub/core/widgets/card_widgets/premium_card.dart';
import 'package:lunchbox_hub/features/inventory/entities/slot_model.dart';
import 'package:lunchbox_hub/i18n/translations.g.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:skeletonizer/skeletonizer.dart';

class SlotListItem extends StatelessWidget {
  const SlotListItem({super.key, required this.slot, this.onEdit});

  final SlotModel slot;
  final VoidCallback? onEdit;

  static const int _lowStockThreshold = 3;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final Color quantityColor;
    final String stockStatus;
    if (slot.quantity == 0) {
      quantityColor = AppDesignTokens.error;
      stockStatus = t.inventory.empty;
    } else if (slot.quantity <= _lowStockThreshold) {
      quantityColor = AppDesignTokens.warning;
      stockStatus = t.inventory.lowStock;
    } else {
      quantityColor = colorScheme.primary;
      stockStatus = t
          .inventory
          .quantity; // Defaulting to "Quantity" or "In Stock" if available
    }

    return PremiumCard(
      glass: false,
      margin: EdgeInsets.symmetric(
        horizontal: AppDesignTokens.spacingM,
        vertical: AppDesignTokens.spacingXS,
      ),
      padding: EdgeInsets.zero,
      child: Slidable(
        key: ValueKey(slot.slotNumber),
        endActionPane: ActionPane(
          motion: const ScrollMotion(),
          extentRatio: 0.25,
          children: [
            SlidableAction(
              onPressed: (_) => onEdit?.call(),
              backgroundColor: colorScheme.primary,
              foregroundColor: colorScheme.onPrimary,
              icon: Symbols.edit,
              label: t.common.edit,
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(AppDesignTokens.spacingM),
          child: Row(
            children: [
              Skeleton.ignore(
                child: Container(
                  width: 52.w,
                  height: 48.h,
                  decoration: BoxDecoration(
                    color: colorScheme.primary.withValues(alpha: 0.12),
                    borderRadius: BorderRadius.circular(
                      AppDesignTokens.radiusS,
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    slot.slotNumber,
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: colorScheme.primary,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
              SizedBox(width: AppDesignTokens.spacingM),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      slot.productName,
                      style: theme.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: colorScheme.onSurface,
                      ),
                    ),
                    SizedBox(height: 2.h),
                    Row(
                      children: [
                        Container(
                          width: 8.w,
                          height: 8.w,
                          decoration: BoxDecoration(
                            color: quantityColor,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          stockStatus,
                          style: theme.textTheme.labelMedium?.copyWith(
                            color: colorScheme.onSurfaceVariant.withValues(
                              alpha: 0.7,
                            ),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '${slot.quantity}',
                    style: theme.textTheme.headlineLarge?.copyWith(
                      fontWeight: FontWeight.w900,
                      color: quantityColor,
                      letterSpacing: -1,
                    ),
                  ),
                  Text(
                    t.inventory.quantity,
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: colorScheme.onSurfaceVariant.withValues(
                        alpha: 0.5,
                      ),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
