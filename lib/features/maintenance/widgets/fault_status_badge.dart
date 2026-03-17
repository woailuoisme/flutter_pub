import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lunchbox_hub/core/theme/design_tokens.dart';
import 'package:lunchbox_hub/features/maintenance/entities/fault_record_model.dart';
import 'package:lunchbox_hub/i18n/translations.g.dart';

class FaultStatusBadge extends StatelessWidget {
  const FaultStatusBadge({super.key, required this.status});

  final FaultStatus status;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isPending = status == FaultStatus.pending;
    final color = isPending ? AppDesignTokens.error : AppDesignTokens.success;
    final label = isPending ? t.maintenance.pending : t.maintenance.resolved;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(AppDesignTokens.radiusFull),
        border: Border.all(color: color.withValues(alpha: 0.2), width: 1),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 6.w,
            height: 6.w,
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
          ),
          SizedBox(width: 6.w),
          Text(
            label,
            style: theme.textTheme.labelSmall?.copyWith(
              color: color,
              fontWeight: FontWeight.bold,
              fontSize: 10.sp,
            ),
          ),
        ],
      ),
    );
  }
}
