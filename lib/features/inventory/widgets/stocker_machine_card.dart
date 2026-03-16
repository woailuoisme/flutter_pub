import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lunchbox_hub/features/inventory/entities/stocker_machine_model.dart';
import 'package:lunchbox_hub/i18n/translations.g.dart';
import 'package:material_symbols_icons/symbols.dart';

class StockerMachineCard extends StatelessWidget {
  const StockerMachineCard({
    super.key,
    required this.machine,
    required this.onTap,
  });

  final StockerMachineModel machine;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    // 状态颜色：空货道优先红色，低库存橙色，否则绿色
    final Color statusColor;
    if (machine.emptySlots > 0) {
      statusColor = colorScheme.error;
    } else if (machine.lowStockSlots > 0) {
      statusColor = Colors.orange;
    } else {
      statusColor = Colors.green;
    }

    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12.r),
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      machine.name,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    width: 10.w,
                    height: 10.w,
                    decoration: BoxDecoration(
                      color: statusColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 6.h),
              Row(
                children: [
                  Icon(
                    Symbols.location_on,
                    size: 16.sp,
                    color: colorScheme.onSurfaceVariant,
                  ),
                  SizedBox(width: 4.w),
                  Expanded(
                    child: Text(
                      machine.location,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12.h),
              Divider(height: 1, color: colorScheme.outlineVariant),
              SizedBox(height: 12.h),
              Row(
                children: [
                  _StatItem(
                    label: t.inventory.totalSlots,
                    value: '${machine.totalSlots}',
                    color: colorScheme.onSurface,
                    theme: theme,
                  ),
                  SizedBox(width: 20.w),
                  _StatItem(
                    label: t.inventory.lowStockSlots,
                    value: '${machine.lowStockSlots}',
                    color: machine.lowStockSlots > 0
                        ? Colors.orange
                        : colorScheme.onSurface,
                    theme: theme,
                  ),
                  SizedBox(width: 20.w),
                  _StatItem(
                    label: t.inventory.emptySlots,
                    value: '${machine.emptySlots}',
                    color: machine.emptySlots > 0
                        ? colorScheme.error
                        : colorScheme.onSurface,
                    theme: theme,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  const _StatItem({
    required this.label,
    required this.value,
    required this.color,
    required this.theme,
  });

  final String label;
  final String value;
  final Color color;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: theme.textTheme.labelSmall?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
        Text(
          value,
          style: theme.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w600,
            color: color,
          ),
        ),
      ],
    );
  }
}
