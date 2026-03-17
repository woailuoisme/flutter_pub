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

  Widget _buildStatusIndicator(
    BuildContext context,
    Color statusColor,
    String statusText,
  ) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
              width: 8.w,
              height: 8.w,
              decoration: BoxDecoration(
                color: statusColor,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: statusColor.withValues(alpha: 0.4),
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),
            )
            .animate(onPlay: (controller) => controller.repeat(reverse: true))
            .scale(
              duration: 800.ms,
              begin: const Offset(1, 1),
              end: const Offset(1.4, 1.4),
              curve: Curves.easeInOut,
            )
            .boxShadow(
              duration: 800.ms,
              begin: BoxShadow(
                color: statusColor.withValues(alpha: 0.2),
                blurRadius: 4,
              ),
              end: BoxShadow(
                color: statusColor.withValues(alpha: 0.6),
                blurRadius: 12,
                spreadRadius: 4,
              ),
            ),
        SizedBox(height: 6.h),
        Text(
          statusText,
          style: theme.textTheme.labelSmall?.copyWith(
            color: statusColor,
            fontWeight: FontWeight.w900,
            letterSpacing: 1.2,
            fontSize: 9.sp,
          ),
        ),
      ],
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
