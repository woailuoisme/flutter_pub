import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lunchbox_hub/core/theme/design_tokens.dart';
import 'package:lunchbox_hub/core/widgets/card_widgets/premium_card.dart';
import 'package:lunchbox_hub/features/agent/entities/agent_machine_model.dart';
import 'package:lunchbox_hub/i18n/translations.g.dart';
import 'package:material_symbols_icons/symbols.dart';

class AgentMachineCard extends StatelessWidget {
  const AgentMachineCard({
    super.key,
    required this.machine,
    required this.onHeaderTap,
    required this.onStatsTap,
  });

  final AgentMachineModel machine;
  final VoidCallback onHeaderTap;
  final VoidCallback onStatsTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return PremiumCard(
      glass: true,
      borderColor: colorScheme.primary.withValues(alpha: 0.1),
      margin: EdgeInsets.symmetric(
        horizontal: AppDesignTokens.spacingM,
        vertical: 6.h,
      ),
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
      onTap: null, // 禁用全局点击，改为内部精细化处理
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 头部点击区域：跳转详情
          GestureDetector(
            onTap: onHeaderTap,
            behavior: HitTestBehavior.opaque,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        machine.name,
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: colorScheme.onSurface,
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 1.h),
                      Row(
                        children: [
                          Icon(
                            Symbols.location_on,
                            size: 11.sp,
                            color: colorScheme.primary,
                            weight: 600,
                          ),
                          SizedBox(width: 3.w),
                          Expanded(
                            child: Text(
                              machine.location,
                              style: theme.textTheme.bodySmall?.copyWith(
                                fontSize: 10.5.sp,
                                color: colorScheme.onSurfaceVariant.withValues(
                                  alpha: 0.7,
                                ),
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(3.r),
                  decoration: BoxDecoration(
                    color: colorScheme.primary.withValues(alpha: 0.08),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Symbols.chevron_right,
                    size: 14.sp,
                    color: colorScheme.primary,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.h),
          // 统计区域点击：跳转订单列表
          GestureDetector(
            onTap: onStatsTap,
            behavior: HitTestBehavior.opaque,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
              decoration: BoxDecoration(
                color: colorScheme.surfaceContainerHighest.withValues(
                  alpha: 0.25,
                ),
                borderRadius: BorderRadius.circular(AppDesignTokens.radiusS),
                border: Border.all(
                  color: colorScheme.primary.withValues(alpha: 0.12),
                  width: 0.5,
                ),
              ),
              child: Row(
                children: [
                  _StatItem(
                    label: t.machines.totalOrders,
                    value: '${machine.totalOrders}',
                    colorScheme: colorScheme,
                    theme: theme,
                  ),
                  Container(
                    height: 14.h,
                    width: 1,
                    margin: EdgeInsets.symmetric(horizontal: 8.w),
                    color: colorScheme.outlineVariant.withValues(alpha: 0.2),
                  ),
                  _StatItem(
                    label: t.machines.totalRevenue,
                    value:
                        '${t.machines.currencyPrefix}${machine.totalRevenue}',
                    colorScheme: colorScheme,
                    theme: theme,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  const _StatItem({
    required this.label,
    required this.value,
    required this.colorScheme,
    required this.theme,
  });

  final String label;
  final String value;
  final ColorScheme colorScheme;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            style: theme.textTheme.labelSmall?.copyWith(
              color: colorScheme.onSurfaceVariant.withValues(alpha: 0.6),
              fontSize: 9.sp,
              letterSpacing: 0,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 1.h),
          Text(
            value,
            style: theme.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: colorScheme.onSurface,
              letterSpacing: -0.3,
              fontSize: 13.sp,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
