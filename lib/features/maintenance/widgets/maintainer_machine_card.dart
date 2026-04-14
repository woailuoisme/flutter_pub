import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lunchbox_hub/core/theme/design_tokens.dart';
import 'package:lunchbox_hub/core/widgets/card_widgets/premium_card.dart';
import 'package:lunchbox_hub/features/maintenance/entities/maintainer_machine_model.dart';
import 'package:lunchbox_hub/i18n/translations.g.dart';
import 'package:material_symbols_icons/symbols.dart';

import 'package:intl/intl.dart';

class MaintainerMachineCard extends StatelessWidget {
  const MaintainerMachineCard({super.key, required this.machine, this.onTap});

  final MaintainerMachineModel machine;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    // Logic for status
    final bool hasFaults = machine.faultCount > 0;
    final statusColor = hasFaults
        ? AppDesignTokens.error
        : AppDesignTokens.success;
    final statusText = hasFaults
        ? t.maintenance.statusFault
        : t.maintenance.statusOnline;

    return PremiumCard(
      onTap: onTap,
      margin: EdgeInsets.symmetric(
        horizontal: AppDesignTokens.spacingM,
        vertical: AppDesignTokens.spacingS,
      ),
      padding: EdgeInsets.all(AppDesignTokens.spacingM),
      glass: true,
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
                        letterSpacing: -0.5,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Row(
                      children: [
                        Icon(
                          Symbols.location_on,
                          size: 14.sp,
                          color: colorScheme.onSurfaceVariant.withValues(
                            alpha: 0.6,
                          ),
                          weight: 400,
                        ),
                        SizedBox(width: 4.w),
                        Text(
                          machine.location,
                          style: theme.textTheme.labelSmall?.copyWith(
                            color: colorScheme.onSurfaceVariant.withValues(
                              alpha: 0.8,
                            ),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              _buildStatusIndicator(context, statusColor, statusText),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: AppDesignTokens.spacingM),
            child: Divider(
              height: 1,
              color: colorScheme.outlineVariant.withValues(alpha: 0.2),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: _buildInfoItem(
                  context,
                  Symbols.error,
                  '${t.maintenance.faultCount}: ${machine.faultCount}',
                  hasFaults
                      ? AppDesignTokens.error
                      : colorScheme.onSurfaceVariant.withValues(alpha: 0.6),
                ),
              ),
              SizedBox(width: AppDesignTokens.spacingM),
              Expanded(
                child: _buildInfoItem(
                  context,
                  Symbols.history,
                  machine.lastFaultAt != null
                      ? DateFormat(
                          'yyyy-MM-dd HH:mm',
                        ).format(DateTime.parse(machine.lastFaultAt!))
                      : "-",
                  colorScheme.onSurfaceVariant.withValues(alpha: 0.6),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStatusIndicator(
    BuildContext context,
    Color statusColor,
    String statusText,
  ) {
    final theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: statusColor.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(AppDesignTokens.radiusFull),
        border: Border.all(
          color: statusColor.withValues(alpha: 0.12),
          width: 1,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
                width: 7.w,
                height: 7.w,
                decoration: BoxDecoration(
                  color: statusColor,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: statusColor.withValues(alpha: 0.3),
                      blurRadius: 8,
                      spreadRadius: 1,
                    ),
                  ],
                ),
              )
              .animate(onPlay: (controller) => controller.repeat(reverse: true))
              .scale(
                duration: 1000.ms,
                begin: const Offset(1, 1),
                end: const Offset(1.3, 1.3),
                curve: Curves.easeInOut,
              ),
          SizedBox(width: 8.w),
          Text(
            statusText,
            style: theme.textTheme.labelSmall?.copyWith(
              color: statusColor,
              fontWeight: FontWeight.w900,
              letterSpacing: 0.5,
              fontSize: 10.sp,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoItem(
    BuildContext context,
    IconData icon,
    String label,
    Color color,
  ) {
    final theme = Theme.of(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 16.sp, color: color, weight: 400),
        SizedBox(width: 6.w),
        Expanded(
          child: Text(
            label,
            style: theme.textTheme.labelSmall?.copyWith(
              color: color,
              fontWeight: FontWeight.w500,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ),
      ],
    );
  }
}
