import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lunchbox_hub/core/theme/design_tokens.dart';
import 'package:lunchbox_hub/features/maintenance/entities/fault_record_model.dart';
import 'package:lunchbox_hub/features/maintenance/widgets/fault_status_badge.dart';
import 'package:material_symbols_icons/symbols.dart';

/// Shows the fault detail bottom sheet interactively
void showFaultDetailBottomSheet(BuildContext context, FaultRecordModel fault) {
  final theme = Theme.of(context);
  final colorScheme = theme.colorScheme;

  showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    backgroundColor: colorScheme.surface,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(AppDesignTokens.radiusXL),
      ),
    ),
    builder: (context) {
      return Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: SafeArea(child: FaultDetailSheetContent(fault: fault)),
      );
    },
  );
}

/// The core content of the fault detail sheet
class FaultDetailSheetContent extends StatelessWidget {
  const FaultDetailSheetContent({super.key, required this.fault});

  final FaultRecordModel fault;

  Widget _buildDetailRow(
    BuildContext context,
    IconData icon,
    String label,
    String value,
  ) {
    final theme = Theme.of(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          size: 16.sp,
          color: theme.colorScheme.onSurfaceVariant.withValues(alpha: 0.7),
        ),
        SizedBox(width: 8.w),
        Text(
          label,
          style: theme.textTheme.bodyMedium?.copyWith(
            color: theme.colorScheme.onSurfaceVariant.withValues(alpha: 0.8),
          ),
        ),
        SizedBox(width: 16.w),
        Expanded(
          child: Text(
            value,
            textAlign: TextAlign.right,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurface,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final isPending = fault.status == FaultStatus.pending;

    return SingleChildScrollView(
      padding: EdgeInsets.all(AppDesignTokens.spacingL),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Handle Indicator
          Center(
            child: Container(
              width: 40.w,
              height: 4.h,
              decoration: BoxDecoration(
                color: colorScheme.onSurfaceVariant.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(2.r),
              ),
            ),
          ),
          SizedBox(height: AppDesignTokens.spacingL),

          // Title & Status
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '故障详情',
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: colorScheme.onSurface,
                ),
              ),
              FaultStatusBadge(status: fault.status),
            ],
          ),
          SizedBox(height: AppDesignTokens.spacingM),

          // Info Box
          Container(
            padding: EdgeInsets.all(AppDesignTokens.spacingM),
            decoration: BoxDecoration(
              color: colorScheme.surfaceContainerHighest.withValues(alpha: 0.3),
              borderRadius: BorderRadius.circular(AppDesignTokens.radiusM),
              border: Border.all(
                color: colorScheme.outlineVariant.withValues(alpha: 0.5),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildDetailRow(context, Symbols.tag, '设备编号', fault.machineId),
                SizedBox(height: AppDesignTokens.spacingS),
                _buildDetailRow(
                  context,
                  Symbols.error,
                  '故障类型',
                  fault.faultType,
                ),
                SizedBox(height: AppDesignTokens.spacingS),
                _buildDetailRow(
                  context,
                  Symbols.schedule,
                  '发生时间',
                  fault.occurredAt,
                ),
              ],
            ),
          ),
          SizedBox(height: AppDesignTokens.spacingM),

          // Description Section
          Text(
            '故障描述',
            style: theme.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: colorScheme.onSurface,
            ),
          ),
          SizedBox(height: AppDesignTokens.spacingXS),
          Text(
            fault.description.isEmpty ? '暂无详细描述信息' : fault.description,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurfaceVariant,
              height: 1.5,
            ),
          ),
          SizedBox(height: AppDesignTokens.spacingL),

          // Pictures Section (Mocked up)
          Text(
            '现场图片',
            style: theme.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: colorScheme.onSurface,
            ),
          ),
          SizedBox(height: AppDesignTokens.spacingS),
          Container(
            height: 80.h,
            alignment: Alignment.centerLeft,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              separatorBuilder: (context, index) => SizedBox(width: 8.w),
              itemBuilder: (context, index) {
                return Container(
                  width: 80.w,
                  decoration: BoxDecoration(
                    color: colorScheme.surfaceContainerHighest,
                    borderRadius: BorderRadius.circular(
                      AppDesignTokens.radiusS,
                    ),
                  ),
                  child: Icon(
                    Symbols.image,
                    color: colorScheme.onSurfaceVariant.withValues(alpha: 0.5),
                    size: 28.sp,
                  ),
                );
              },
            ),
          ),
          SizedBox(height: AppDesignTokens.spacingXL),

          // Action Button
          FilledButton.icon(
            onPressed: isPending
                ? () {
                    Navigator.of(context).pop();
                    // Optional: trigger action using Riverpod
                  }
                : null,
            icon: Icon(isPending ? Symbols.build : Symbols.check_circle),
            label: Text(isPending ? '立即处理故障' : '已完成修复'),
            style: FilledButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 16.h),
              backgroundColor: isPending
                  ? theme.colorScheme.primary
                  : theme.colorScheme.surfaceContainerHighest,
              foregroundColor: isPending
                  ? theme.colorScheme.onPrimary
                  : theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}
