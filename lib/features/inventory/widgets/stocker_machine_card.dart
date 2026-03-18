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
      borderColor: colorScheme.primary.withValues(alpha: 0.1),
      onTap: onTap,
      margin: EdgeInsets.symmetric(
        horizontal: AppDesignTokens.spacingM,
        vertical: 6.h,
      ),
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                machine.name,
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  letterSpacing: -0.2,
                  fontSize: 14.sp,
                ),
              ),
              SizedBox(height: 2.h),
              Row(
                children: [
                  Icon(
                    Symbols.location_on,
                    size: 11.sp,
                    color: colorScheme.primary.withValues(alpha: 0.7),
                    weight: 400,
                  ),
                  SizedBox(width: 4.w),
                  Expanded(
                    child: Text(
                      machine.location,
                      style: theme.textTheme.bodySmall?.copyWith(
                        fontSize: 10.5.sp,
                        color: colorScheme.onSurfaceVariant.withValues(
                          alpha: 0.7,
                        ),
                        fontWeight: FontWeight.w500,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Container(
                padding: EdgeInsets.symmetric(vertical: 8.h),
                decoration: BoxDecoration(
                  color: colorScheme.surfaceContainerHighest.withValues(
                    alpha: 0.2,
                  ),
                  borderRadius: BorderRadius.circular(AppDesignTokens.radiusS),
                  border: Border.all(
                    color: colorScheme.primary.withValues(alpha: 0.08),
                    width: 0.5,
                  ),
                ),
                child: Row(
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
          Positioned(
            top: -2.r,
            right: -2.r,
            child:
                Container(
                      width: 10.r,
                      height: 10.r,
                      decoration: BoxDecoration(
                        color: statusColor,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: theme.scaffoldBackgroundColor,
                          width: 2.r,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: statusColor.withValues(alpha: 0.3),
                            blurRadius: 4,
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                    )
                    .animate(onPlay: (controller) => controller.repeat())
                    .scale(
                      duration: 1200.ms,
                      begin: const Offset(1, 1),
                      end: const Offset(1.2, 1.2),
                      curve: Curves.easeInOut,
                    )
                    .then()
                    .scale(
                      duration: 1200.ms,
                      begin: const Offset(1.2, 1.2),
                      end: const Offset(1, 1),
                      curve: Curves.easeInOut,
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

    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            label,
            textAlign: TextAlign.center,
            style: theme.textTheme.labelSmall?.copyWith(
              color: colorScheme.onSurfaceVariant.withValues(alpha: 0.6),
              fontWeight: FontWeight.w500,
              fontSize: 9.sp,
            ),
          ),
          SizedBox(height: 1.h),
          Text(
            value,
            textAlign: TextAlign.center,
            style: theme.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: color,
              letterSpacing: -0.3,
              fontSize: 14.sp,
            ),
          ),
        ],
      ),
    );
  }
}
