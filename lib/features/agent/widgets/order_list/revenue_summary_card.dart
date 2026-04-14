import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lunchbox_hub/core/theme/design_tokens.dart';
import 'package:lunchbox_hub/core/widgets/card_widgets/premium_card.dart';
import 'package:material_symbols_icons/symbols.dart';

class RevenueSummaryCard extends StatelessWidget {
  const RevenueSummaryCard({super.key, required this.totalRevenue});

  final String totalRevenue;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return PremiumCard(
      glass: true,
      margin: EdgeInsets.symmetric(
        horizontal: AppDesignTokens.spacingM,
        vertical: AppDesignTokens.spacingS,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppDesignTokens.spacingL,
          vertical: AppDesignTokens.spacingM,
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(12.w),
              decoration: BoxDecoration(
                color: colorScheme.primary.withValues(alpha: 0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Symbols.payments,
                size: 28.sp,
                color: colorScheme.primary,
              ),
            ),
            SizedBox(width: 16.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '总营收',
                  style: theme.textTheme.labelMedium?.copyWith(
                    color: colorScheme.onSurfaceVariant.withValues(alpha: 0.8),
                    letterSpacing: 0.5,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  '¥$totalRevenue',
                  style: theme.textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.w800,
                    color: colorScheme.onSurface,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
