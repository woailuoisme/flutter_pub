import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lunchbox_hub/core/theme/design_tokens.dart';
import 'package:lunchbox_hub/core/widgets/card_widgets/premium_card.dart';
import 'package:lunchbox_hub/features/maintenance/entities/fault_record_model.dart';
import 'package:lunchbox_hub/features/maintenance/widgets/fault_detail_bottom_sheet.dart';
import 'package:lunchbox_hub/features/maintenance/widgets/fault_status_badge.dart';
import 'package:material_symbols_icons/symbols.dart';

class FaultRecordListItem extends StatelessWidget {
  const FaultRecordListItem({super.key, required this.fault});

  final FaultRecordModel fault;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final isPending = fault.status == FaultStatus.pending;

    return PremiumCard(
      onTap: () => showFaultDetailBottomSheet(context, fault),
      margin: EdgeInsets.symmetric(
        horizontal: AppDesignTokens.spacingM,
        vertical: AppDesignTokens.spacingXS,
      ),
      padding: EdgeInsets.all(AppDesignTokens.spacingM),
      glass: true,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(12.w),
            decoration: BoxDecoration(
              color:
                  (isPending ? AppDesignTokens.error : AppDesignTokens.success)
                      .withValues(alpha: 0.08),
              borderRadius: BorderRadius.circular(AppDesignTokens.radiusM),
              border: Border.all(
                color:
                    (isPending
                            ? AppDesignTokens.error
                            : AppDesignTokens.success)
                        .withValues(alpha: 0.1),
                width: 1,
              ),
            ),
            child: Icon(
              isPending ? Symbols.warning : Symbols.check_circle,
              color: isPending
                  ? AppDesignTokens.error
                  : AppDesignTokens.success,
              size: 22.sp,
              weight: 600,
            ),
          ),
          SizedBox(width: AppDesignTokens.spacingM),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        fault.faultType,
                        style: theme.textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: colorScheme.onSurface,
                        ),
                      ),
                    ),
                    FaultStatusBadge(status: fault.status),
                  ],
                ),
                if (fault.description.isNotEmpty) ...[
                  SizedBox(height: 6.h),
                  Text(
                    fault.description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant.withValues(
                        alpha: 0.8,
                      ),
                      height: 1.4,
                    ),
                  ),
                ],
                SizedBox(height: 12.h),
                Row(
                  children: [
                    Icon(
                      Symbols.schedule,
                      size: 14.sp,
                      color: colorScheme.onSurfaceVariant.withValues(
                        alpha: 0.6,
                      ),
                      weight: 400,
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      fault.occurredAt,
                      style: theme.textTheme.labelSmall?.copyWith(
                        color: colorScheme.onSurfaceVariant.withValues(
                          alpha: 0.6,
                        ),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
