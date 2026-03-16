import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lunchbox_hub/features/agent/entities/revenue_stats_model.dart';
import 'package:lunchbox_hub/i18n/translations.g.dart';

class KpiCard extends StatelessWidget {
  const KpiCard({super.key, required this.stats});

  final RevenueStatsModel stats;

  @override
  Widget build(BuildContext context) {
    final growthRate = stats.growthRate;

    final items = [
      _KpiItem(
        label: t.machines.totalRevenue,
        value: '${t.machines.currencyPrefix}${stats.totalRevenue}',
      ),
      _KpiItem(label: t.machines.totalOrders, value: '${stats.totalOrders}'),
      _KpiItem(
        label: t.machines.dailyAvgRevenue,
        value: '${t.machines.currencyPrefix}${stats.dailyAvgRevenue}',
      ),
      _KpiItem(
        label: t.machines.growthRate,
        value: '${growthRate.abs().toStringAsFixed(1)}%',
        growthRate: growthRate,
        showArrow: true,
      ),
    ];

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisSpacing: 12.w,
        mainAxisSpacing: 12.h,
        childAspectRatio: 1.6,
        children: items.map((item) => _KpiCardItem(item: item)).toList(),
      ),
    );
  }
}

class _KpiItem {
  const _KpiItem({
    required this.label,
    required this.value,
    this.growthRate,
    this.showArrow = false,
  });

  final String label;
  final String value;
  final double? growthRate;
  final bool showArrow;
}

class _KpiCardItem extends StatelessWidget {
  const _KpiCardItem({required this.item});

  final _KpiItem item;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    Widget? arrowWidget;
    if (item.showArrow && item.growthRate != null && item.growthRate != 0) {
      final isPositive = item.growthRate! > 0;
      arrowWidget = Icon(
        isPositive ? Icons.arrow_upward_rounded : Icons.arrow_downward_rounded,
        size: 16.sp,
        color: isPositive ? Colors.green : Colors.red,
      );
    }

    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              item.label,
              style: theme.textTheme.labelSmall?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            ),
            SizedBox(height: 6.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    item.value,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: colorScheme.onSurface,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                ?arrowWidget,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
