import 'package:collection/collection.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:material_ui/material_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lunchbox_hub/core/theme/design_tokens.dart';
import 'package:lunchbox_hub/features/agent/entities/product_sales_model.dart';
import 'package:lunchbox_hub/i18n/translations.g.dart';

class ProductPieChart extends StatefulWidget {
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
  State<ProductPieChart> createState() => _ProductPieChartState();
}

class _ProductPieChartState extends State<ProductPieChart> {
  int _touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    if (widget.data.isEmpty) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: AppDesignTokens.spacingM),
        decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          borderRadius: BorderRadius.circular(AppDesignTokens.radiusL),
          border: Border.all(
            color: theme.colorScheme.outlineVariant.withValues(alpha: 0.2),
          ),
          boxShadow: [
            BoxShadow(
              color: theme.colorScheme.shadow.withValues(alpha: 0.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
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

    final sections = widget.data.mapIndexed((index, item) {
      final isTouched = index == _touchedIndex;
      final fontSize = isTouched ? 16.0 : 12.0;
      final radius = isTouched ? 50.r : 40.r;
      final color = ProductPieChart
          ._chartColors[index % ProductPieChart._chartColors.length];

      final percentageText =
          item.percentage.truncateToDouble() == item.percentage
          ? '${item.percentage.toInt()}%'
          : '${item.percentage.toStringAsFixed(1)}%';

      return PieChartSectionData(
        value: item.percentage,
        color: color,
        radius: radius,
        title: percentageText,
        showTitle: true,
        titleStyle: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        badgeWidget: null,
      );
    }).toList();

    return Container(
      margin: EdgeInsets.symmetric(horizontal: AppDesignTokens.spacingM),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(AppDesignTokens.radiusL),
        border: Border.all(
          color: theme.colorScheme.outlineVariant.withValues(alpha: 0.2),
        ),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.shadow.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(AppDesignTokens.spacingM),
        child: Column(
          children: [
            SizedBox(
              height: 180.h,
              child: PieChart(
                PieChartData(
                  pieTouchData: PieTouchData(
                    touchCallback: (FlTouchEvent event, pieTouchResponse) {
                      setState(() {
                        if (!event.isInterestedForInteractions ||
                            pieTouchResponse == null ||
                            pieTouchResponse.touchedSection == null) {
                          _touchedIndex = -1;
                          return;
                        }
                        _touchedIndex = pieTouchResponse
                            .touchedSection!
                            .touchedSectionIndex;
                      });
                    },
                  ),
                  sections: sections,
                  centerSpaceRadius: 50.r,
                  sectionsSpace: 4,
                  startDegreeOffset: 270,
                ),
              ),
            ),
            SizedBox(height: AppDesignTokens.spacingL),
            Wrap(
              spacing: AppDesignTokens.spacingM,
              runSpacing: AppDesignTokens.spacingS,
              children: widget.data.mapIndexed((index, item) {
                final color = ProductPieChart
                    ._chartColors[index % ProductPieChart._chartColors.length];
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
