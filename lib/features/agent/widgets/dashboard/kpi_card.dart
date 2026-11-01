import 'package:material_ui/material_ui.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lunchbox_hub/core/theme/design_tokens.dart';
import 'package:lunchbox_hub/core/widgets/card_widgets/premium_card.dart';
import 'package:lunchbox_hub/features/agent/entities/revenue_stats_model.dart';
import 'package:lunchbox_hub/i18n/translations.g.dart';
import 'package:lunchbox_hub/routes/routes.dart';
import 'package:material_symbols_icons/symbols.dart';

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
        icon: Symbols.payments,
      ),
      _KpiItem(
        label: t.machines.totalOrders,
        value: '${stats.totalOrders}',
        icon: Symbols.shopping_basket,
      ),
      _KpiItem(
        label: t.machines.dailyAvgRevenue,
        value: '${t.machines.currencyPrefix}${stats.dailyAvgRevenue}',
        icon: Symbols.analytics,
        growthRate: growthRate,
        showArrow: true,
      ),
      _KpiItem(
        label: t.machines.totalMachines,
        value: '${stats.totalMachines}',
        icon: Symbols.devices,
        onTap: (context) => const AgentMachineListRoute().push<void>(context),
      ),
    ];

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppDesignTokens.spacingM,
        vertical: AppDesignTokens.spacingS,
      ),
      child: GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisSpacing: AppDesignTokens.spacingS,
        mainAxisSpacing: AppDesignTokens.spacingS,
        childAspectRatio: 1.4,
        children: items.asMap().entries.map((entry) {
          return _KpiCardItem(item: entry.value, index: entry.key);
        }).toList(),
      ),
    );
  }
}

class _KpiItem {
  const _KpiItem({
    required this.label,
    required this.value,
    required this.icon,
    this.growthRate,
    this.showArrow = false,
    this.onTap,
  });

  final String label;
  final String value;
  final IconData icon;
  final double? growthRate;
  final bool showArrow;
  final void Function(BuildContext)? onTap;
}

class _KpiCardItem extends StatelessWidget {
  const _KpiCardItem({required this.item, required this.index});

  final _KpiItem item;
  final int index;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    Widget? arrowWidget;
    if (item.showArrow && item.growthRate != null && item.growthRate != 0) {
      final isPositive = item.growthRate! > 0;
      final statusColor = isPositive
          ? AppDesignTokens.success
          : AppDesignTokens.error;

      arrowWidget = Container(
        padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
        decoration: BoxDecoration(
          color: statusColor.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(AppDesignTokens.radiusS),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              isPositive ? Symbols.trending_up : Symbols.trending_down,
              size: 12.sp,
              color: statusColor,
              weight: 600,
            ),
            SizedBox(width: 2.w),
            Text(
              '${item.growthRate!.abs().toStringAsFixed(1)}%',
              style: TextStyle(fontSize: 15.sp, color: statusColor),
            ),
          ],
        ),
      );
    }

    return InkWell(
      onTap: item.onTap != null ? () => item.onTap!(context) : null,
      borderRadius: BorderRadius.circular(AppDesignTokens.radiusL),
      child: PremiumCard(
        padding: EdgeInsets.all(AppDesignTokens.spacingM),
        glass: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(6.w),
                  decoration: BoxDecoration(
                    color: colorScheme.primary.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(
                      AppDesignTokens.radiusS,
                    ),
                  ),
                  child: Icon(
                    item.icon,
                    size: 18.sp,
                    color: colorScheme.primary,
                  ),
                ),
                ?arrowWidget,
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.label,
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: colorScheme.onSurface.withValues(alpha: 0.7),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                      item.value,
                      style: theme.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: colorScheme.onSurface,
                        letterSpacing: -0.8,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    )
                    .animate()
                    .fadeIn(delay: (100 * index).ms)
                    .slideX(begin: 0.1, end: 0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
