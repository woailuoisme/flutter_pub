import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lunchbox_hub/core/theme/design_tokens.dart';
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

    final primary = colorScheme.primary;
    final spots = data
        .asMap()
        .entries
        .map((e) => FlSpot(e.key.toDouble(), e.value.value))
        .toList();

    final maxY = data.map((p) => p.value).reduce((a, b) => a > b ? a : b);
    final minY = data.map((p) => p.value).reduce((a, b) => a < b ? a : b);

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
              minX: -0.5,
              maxX: data.length - 0.5,
              minY: minY * 0.9,
              maxY: maxY * 1.1,
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
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 40.w,
                    getTitlesWidget: (value, meta) {
                      // Prevent overlapping labels at the absolute extremes
                      if (value == meta.min || value == meta.max) {
                        return const SizedBox.shrink();
                      }

                      final text = value >= 1000
                          ? '${(value / 1000).toStringAsFixed(1)}k'
                          : value.toStringAsFixed(0);

                      return SideTitleWidget(
                        meta: meta,
                        space: 8.w,
                        child: SizedBox(
                          width: 32.w,
                          child: Text(
                            text,
                            textAlign: TextAlign.right,
                            style: theme.textTheme.labelSmall?.copyWith(
                              fontSize: 10.sp,
                              color: colorScheme.onSurfaceVariant.withValues(
                                alpha: 0.6,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
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
                    reservedSize: 42.h,
                    interval: 1,
                    getTitlesWidget: (value, meta) {
                      final index = value.toInt();
                      if (index < 0 || index >= data.length || index != value) {
                        return const SizedBox.shrink();
                      }

                      final labelText = data[index].label.replaceAll('.', '-');

                      return SideTitleWidget(
                        meta: meta,
                        angle: -0.785398,
                        space: 10.h,
                        child: Text(
                          labelText,
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
