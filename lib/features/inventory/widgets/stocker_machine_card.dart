import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lunchbox_hub/core/theme/design_tokens.dart';
import 'package:lunchbox_hub/core/widgets/card_widgets/premium_card.dart';
import 'package:lunchbox_hub/features/inventory/entities/stocker_machine_model.dart';
import 'package:lunchbox_hub/i18n/translations.g.dart';
import 'package:material_symbols_icons/symbols.dart';

class StockerMachineCard extends StatelessWidget {
  const StockerMachineCard({
    super.key,
    required this.machine,
    required this.onTap,
  });

  final StockerMachineModel machine;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    // Status color based on stock levels
    final Color statusColor;
    if (machine.emptySlots > 0) {
      statusColor = AppDesignTokens.error;
    } else if (machine.lowStockSlots > 0) {
      statusColor = AppDesignTokens.warning;
    } else {
      statusColor = AppDesignTokens.success;
    }

    return PremiumCard(
      glass: true,
      onTap: onTap,
      margin: EdgeInsets.symmetric(
        horizontal: AppDesignTokens.spacingM,
        vertical: AppDesignTokens.spacingS,
      ),
      padding: EdgeInsets.all(AppDesignTokens.spacingM),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  machine.name,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    letterSpacing: -0.5,
                  ),
                ),
              ),
              Container(
                    width: 10.w,
                    height: 10.w,
                    decoration: BoxDecoration(
                      color: statusColor,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: statusColor.withValues(alpha: 0.4),
                          blurRadius: 8,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                  )
                  .animate(onPlay: (controller) => controller.repeat())
                  .scale(
                    duration: 1200.ms,
                    begin: const Offset(1, 1),
                    end: const Offset(1.3, 1.3),
                    curve: Curves.easeInOut,
                  )
                  .then()
                  .scale(
                    duration: 1200.ms,
                    begin: const Offset(1.3, 1.3),
                    end: const Offset(1, 1),
                    curve: Curves.easeInOut,
                  ),
            ],
          ),
          SizedBox(height: AppDesignTokens.spacingS),
          Row(
            children: [
              Icon(
                Symbols.location_on,
                size: 16.sp,
                color: colorScheme.primary.withValues(alpha: 0.7),
                weight: 400,
              ),
              SizedBox(width: 4.w),
              Expanded(
                child: Text(
                  machine.location,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: colorScheme.onSurfaceVariant.withValues(alpha: 0.8),
                    fontWeight: FontWeight.w500,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          SizedBox(height: AppDesignTokens.spacingM),
          Container(
            padding: EdgeInsets.all(AppDesignTokens.spacingM),
            decoration: BoxDecoration(
              color: colorScheme.surfaceContainerHighest.withValues(alpha: 0.3),
              borderRadius: BorderRadius.circular(AppDesignTokens.radiusM),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _StatItem(
                  label: t.inventory.totalSlots,
                  value: '${machine.totalSlots}',
                  color: colorScheme.onSurface,
                ),
                _StatItem(
                  label: t.inventory.lowStockSlots,
                  value: '${machine.lowStockSlots}',
                  color: machine.lowStockSlots > 0
                      ? AppDesignTokens.warning
                      : colorScheme.onSurface,
                ),
                _StatItem(
                  label: t.inventory.emptySlots,
                  value: '${machine.emptySlots}',
                  color: machine.emptySlots > 0
                      ? AppDesignTokens.error
                      : colorScheme.onSurface,
                ),
              ],
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
    required this.color,
  });

  final String label;
  final String value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: theme.textTheme.labelSmall?.copyWith(
            color: colorScheme.onSurfaceVariant.withValues(alpha: 0.6),
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 2.h),
        Text(
          value,
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: color,
            letterSpacing: -0.5,
          ),
        ),
      ],
    );
  }
}
