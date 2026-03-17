import 'package:collection/collection.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lunchbox_hub/core/theme/design_tokens.dart';
import 'package:lunchbox_hub/core/widgets/card_widgets/premium_card.dart';
import 'package:lunchbox_hub/features/agent/entities/product_sales_model.dart';
import 'package:lunchbox_hub/i18n/translations.g.dart';

class ProductPieChart extends StatelessWidget {
  const ProductPieChart({super.key, required this.data});

  final List<ProductSalesModel> data;

  // Modern, harmonic color palette
  static const List<Color> _chartColors = [
    Color(0xFF6366F1), // Indigo
    Color(0xFF10B981), // Emerald
    Color(0xFFF59E0B), // Amber
    Color(0xFFEF4444), // Red
    Color(0xFF8B5CF6), // Violet
    Color(0xFFEC4899), // Pink
    Color(0xFF06B6D4), // Cyan
    Color(0xFFF97316), // Orange
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    if (data.isEmpty) {
      return PremiumCard(
        margin: EdgeInsets.symmetric(horizontal: AppDesignTokens.spacingM),
        child: SizedBox(
          height: 200.h,
          child: Center(
            child: Text(
              t.common.noData,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            ),
          ),
        ),
      );
    }

    final sections = data.mapIndexed((index, item) {
      final color = _chartColors[index % _chartColors.length];
      return PieChartSectionData(
        value: item.percentage,
        color: color,
        radius: 40.r,
        title: '',
        showTitle: false,
        badgeWidget: null, // Could add icons here if needed
      );
    }).toList();

    return PremiumCard(
      margin: EdgeInsets.symmetric(horizontal: AppDesignTokens.spacingM),
      child: Padding(
        padding: EdgeInsets.all(AppDesignTokens.spacingM),
        child: Column(
          children: [
            SizedBox(
              height: 180.h,
              child: Stack(
                children: [
                  PieChart(
                    PieChartData(
                      sections: sections,
                      centerSpaceRadius: 50.r,
                      sectionsSpace: 4,
                      startDegreeOffset: 270,
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          t.machines.total,
                          style: theme.textTheme.labelSmall?.copyWith(
                            color: colorScheme.onSurfaceVariant.withValues(
                              alpha: 0.6,
                            ),
                          ),
                        ),
                        Text(
                          '100%',
                          style: theme.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: colorScheme.onSurface,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: AppDesignTokens.spacingL),
            Wrap(
              spacing: AppDesignTokens.spacingM,
              runSpacing: AppDesignTokens.spacingS,
              children: data.mapIndexed((index, item) {
                final color = _chartColors[index % _chartColors.length];
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 8.w,
                      height: 8.h,
                      decoration: BoxDecoration(
                        color: color,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: color.withValues(alpha: 0.3),
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 6.w),
                    Text(
                      item.productName,
                      style: theme.textTheme.labelSmall?.copyWith(
                        color: colorScheme.onSurface,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      '${item.percentage.toStringAsFixed(1)}%',
                      style: theme.textTheme.labelSmall?.copyWith(
                        color: colorScheme.onSurfaceVariant.withValues(
                          alpha: 0.6,
                        ),
                      ),
                    ),
                  ],
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
