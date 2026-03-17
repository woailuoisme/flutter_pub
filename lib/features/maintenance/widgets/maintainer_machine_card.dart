import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lunchbox_hub/core/theme/design_tokens.dart';
import 'package:lunchbox_hub/core/widgets/card_widgets/premium_card.dart';
import 'package:lunchbox_hub/features/maintenance/entities/maintainer_machine_model.dart';
import 'package:lunchbox_hub/i18n/translations.g.dart';
import 'package:material_symbols_icons/symbols.dart';

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
    final statusText = hasFaults ? 'FAULT' : 'ONLINE';

    return PremiumCard(
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
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
                              spreadRadius: 2,
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
                  SizedBox(height: 4.h),
                  Text(
                    statusText,
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: statusColor,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                      fontSize: 10.sp,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: AppDesignTokens.spacingM),
            child: Divider(
              height: 1,
              color: colorScheme.outlineVariant.withValues(alpha: 0.3),
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
                  '${t.maintenance.lastFaultAt}: ${machine.lastFaultAt ?? "-"}',
                  colorScheme.onSurfaceVariant.withValues(alpha: 0.6),
                ),
              ),
            ],
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
