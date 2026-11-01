import 'package:fl_chart/fl_chart.dart';
import 'package:material_ui/material_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lunchbox_hub/core/theme/design_tokens.dart';
import 'package:lunchbox_hub/features/agent/entities/revenue_stats_model.dart';
import 'package:lunchbox_hub/i18n/translations.g.dart';

class MachineComparisonBarChart extends StatelessWidget {
  const MachineComparisonBarChart({
    super.key,
    required this.data,
    required this.onMachineTap,
  });

  final List<MachineRevenuePoint> data;
  final ValueChanged<String> onMachineTap;

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
    final maxY = data.map((p) => p.revenue).reduce((a, b) => a > b ? a : b);

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 220.h,
              child: BarChart(
                BarChartData(
                  maxY: maxY * 1.2,
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
                                  color: colorScheme.onSurfaceVariant
                                      .withValues(alpha: 0.6),
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
                        reservedSize: 32.h,
                        getTitlesWidget: (value, meta) {
                          final index = value.toInt();
                          if (index < 0 || index >= data.length) {
                            return const SizedBox.shrink();
                          }
                          final name = data[index].machineName;
                          final truncated = name.length > 5
                              ? '${name.substring(0, 5)}…'
                              : name;
                          return Padding(
                            padding: EdgeInsets.only(top: 8.h),
                            child: Text(
                              truncated,
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
                  barTouchData: BarTouchData(
                    touchCallback: (event, response) {
                      if (event is FlTapUpEvent && response?.spot != null) {
                        final index = response!.spot!.touchedBarGroupIndex;
                        if (index >= 0 && index < data.length) {
                          onMachineTap(data[index].machineId);
                        }
                      }
                    },
                    touchTooltipData: BarTouchTooltipData(
                      getTooltipColor: (_) =>
                          colorScheme.surfaceContainerHighest,
                      tooltipBorderRadius: BorderRadius.circular(
                        AppDesignTokens.radiusS,
                      ),
                      getTooltipItem: (group, groupIndex, rod, rodIndex) =>
                          BarTooltipItem(
                            '${t.machines.currencyPrefix}${rod.toY.toStringAsFixed(2)}',
                            theme.textTheme.labelMedium!.copyWith(
                              color: colorScheme.onSurfaceVariant,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                    ),
                  ),
                  barGroups: data
                      .asMap()
                      .entries
                      .map(
                        (e) => BarChartGroupData(
                          x: e.key,
                          barRods: [
                            BarChartRodData(
                              toY: e.value.revenue,
                              gradient: LinearGradient(
                                colors: [
                                  primary,
                                  primary.withValues(alpha: 0.7),
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                              width: (220.w / data.length).clamp(8.0, 32.0),
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(AppDesignTokens.radiusS),
                              ),
                              backDrawRodData: BackgroundBarChartRodData(
                                show: true,
                                toY: maxY * 1.2,
                                color: colorScheme.surfaceContainerHighest
                                    .withValues(alpha: 0.3),
                              ),
                            ),
                          ],
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
