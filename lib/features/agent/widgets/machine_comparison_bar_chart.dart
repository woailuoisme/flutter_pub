import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lunchbox_hub/features/agent/entities/revenue_stats_model.dart';

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
    if (data.isEmpty) {
      return SizedBox(
        height: 200.h,
        child: Center(
          child: Text(
            '暂无数据',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
        ),
      );
    }

    final primary = Theme.of(context).colorScheme.primary;
    final maxY = data.map((p) => p.revenue).reduce((a, b) => a > b ? a : b);

    return SizedBox(
      height: 220.h,
      child: Padding(
        padding: EdgeInsets.only(right: 16.w, top: 8.h),
        child: BarChart(
          BarChartData(
            maxY: maxY * 1.2,
            gridData: FlGridData(
              show: true,
              drawVerticalLine: false,
              getDrawingHorizontalLine: (value) => FlLine(
                color: Theme.of(
                  context,
                ).colorScheme.outlineVariant.withValues(alpha: 0.5),
                strokeWidth: 1,
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
                      padding: EdgeInsets.only(top: 4.h),
                      child: Text(
                        truncated,
                        style: TextStyle(
                          fontSize: 10.sp,
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
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
                getTooltipItem: (group, groupIndex, rod, rodIndex) =>
                    BarTooltipItem(
                      '¥${rod.toY.toStringAsFixed(2)}',
                      TextStyle(
                        color: Colors.white,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
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
                        color: primary,
                        width: (280.w / data.length).clamp(8.0, 32.0),
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(4.r),
                        ),
                      ),
                    ],
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
