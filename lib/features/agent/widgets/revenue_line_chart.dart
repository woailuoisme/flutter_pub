import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lunchbox_hub/core/theme/design_tokens.dart';
import 'package:lunchbox_hub/core/widgets/card_widgets/premium_card.dart';
import 'package:lunchbox_hub/features/agent/entities/revenue_stats_model.dart';
import 'package:lunchbox_hub/i18n/translations.g.dart';

class RevenueTrendLineChart extends StatelessWidget {
  const RevenueTrendLineChart({super.key, required this.data});

  final List<TimeSeriesPoint> data;

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

    final primary = colorScheme.primary;
    final spots = data
        .asMap()
        .entries
        .map((e) => FlSpot(e.key.toDouble(), e.value.value))
        .toList();

    final maxY = data.map((p) => p.value).reduce((a, b) => a > b ? a : b);
    final minY = data.map((p) => p.value).reduce((a, b) => a < b ? a : b);

    return PremiumCard(
      margin: EdgeInsets.symmetric(horizontal: AppDesignTokens.spacingM),
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          AppDesignTokens.spacingM,
          AppDesignTokens.spacingL,
          AppDesignTokens.spacingM,
          AppDesignTokens.spacingM,
        ),
        child: SizedBox(
          height: 200.h,
          child: LineChart(
            LineChartData(
              minY: minY * 0.95,
              maxY: maxY * 1.05,
              gridData: FlGridData(
                show: true,
                drawVerticalLine: false,
                getDrawingHorizontalLine: (value) => FlLine(
                  color: colorScheme.outlineVariant.withValues(alpha: 0.3),
                  strokeWidth: 1,
                  dashArray: [5, 5],
                ),
              ),
              borderData: FlBorderData(show: false),
              titlesData: FlTitlesData(
                leftTitles: const AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                rightTitles: const AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                topTitles: const AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 32.h,
                    interval: (data.length / 4).ceilToDouble().clamp(
                      1,
                      double.infinity,
                    ),
                    getTitlesWidget: (value, meta) {
                      final index = value.toInt();
                      if (index < 0 || index >= data.length) {
                        return const SizedBox.shrink();
                      }
                      return Padding(
                        padding: EdgeInsets.only(top: 10.h),
                        child: Text(
                          data[index].label,
                          style: theme.textTheme.labelSmall?.copyWith(
                            fontSize: 10.sp,
                            color: colorScheme.onSurfaceVariant.withValues(
                              alpha: 0.6,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              lineTouchData: LineTouchData(
                touchTooltipData: LineTouchTooltipData(
                  maxContentWidth: 120.w,
                  getTooltipColor: (_) => colorScheme.surfaceContainerHighest,
                  tooltipBorderRadius: BorderRadius.circular(
                    AppDesignTokens.radiusS,
                  ),
                  getTooltipItems: (spots) => spots
                      .map(
                        (s) => LineTooltipItem(
                          '${t.machines.currencyPrefix}${s.y.toStringAsFixed(2)}',
                          theme.textTheme.labelMedium!.copyWith(
                            color: colorScheme.onSurfaceVariant,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              lineBarsData: [
                LineChartBarData(
                  spots: spots,
                  isCurved: true,
                  curveSmoothness: 0.3,
                  color: primary,
                  barWidth: 3,
                  isStrokeCapRound: true,
                  dotData: const FlDotData(show: false),
                  belowBarData: BarAreaData(
                    show: true,
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        primary.withValues(alpha: 0.2),
                        primary.withValues(alpha: 0.0),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
