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
    required this.onTap,
  });

  final AgentMachineModel machine;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return PremiumCard(
      margin: EdgeInsets.symmetric(
        horizontal: AppDesignTokens.spacingM,
        vertical: AppDesignTokens.spacingXS,
      ),
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.all(AppDesignTokens.spacingM),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
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
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Row(
                        children: [
                          Icon(
                            Symbols.location_on,
                            size: 14.sp,
                            color: colorScheme.primary.withValues(alpha: 0.7),
                            weight: 500,
                          ),
                          SizedBox(width: 4.w),
                          Expanded(
                            child: Text(
                              machine.location,
                              style: theme.textTheme.bodySmall?.copyWith(
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
                Icon(
                  Symbols.chevron_right,
                  size: 20.sp,
                  color: colorScheme.onSurfaceVariant.withValues(alpha: 0.3),
                ),
              ],
            ),
            SizedBox(height: AppDesignTokens.spacingM),
            Container(
              padding: EdgeInsets.all(AppDesignTokens.spacingM),
              decoration: BoxDecoration(
                color: colorScheme.surfaceContainerHighest.withValues(
                  alpha: 0.3,
                ),
                borderRadius: BorderRadius.circular(AppDesignTokens.radiusM),
              ),
              child: Row(
                children: [
                  _StatItem(
                    icon: Symbols.receipt_long,
                    label: t.machines.totalOrders,
                    value: '${machine.totalOrders}',
                    colorScheme: colorScheme,
                    theme: theme,
                  ),
                  Container(
                    height: 24.h,
                    width: 1,
                    margin: EdgeInsets.symmetric(
                      horizontal: AppDesignTokens.spacingM,
                    ),
                    color: colorScheme.outlineVariant.withValues(alpha: 0.5),
                  ),
                  _StatItem(
                    icon: Symbols.payments,
                    label: t.machines.totalRevenue,
                    value:
                        '${t.machines.currencyPrefix}${machine.totalRevenue}',
                    colorScheme: colorScheme,
                    theme: theme,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  const _StatItem({
    required this.icon,
    required this.label,
    required this.value,
    required this.colorScheme,
    required this.theme,
  });

  final IconData icon;
  final String label;
  final String value;
  final ColorScheme colorScheme;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 18.sp, color: colorScheme.primary, weight: 300),
          SizedBox(width: AppDesignTokens.spacingS),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: theme.textTheme.labelSmall?.copyWith(
                  color: colorScheme.onSurfaceVariant.withValues(alpha: 0.6),
                  fontSize: 10.sp,
                ),
              ),
              Text(
                value,
                style: theme.textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: colorScheme.onSurface,
                  letterSpacing: -0.5,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
