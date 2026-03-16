import 'package:collection/collection.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lunchbox_hub/features/agent/entities/product_sales_model.dart';

const _kChartColors = [
  Color(0xFF4CAF50),
  Color(0xFF2196F3),
  Color(0xFFFF9800),
  Color(0xFFE91E63),
  Color(0xFF9C27B0),
  Color(0xFF00BCD4),
  Color(0xFFFF5722),
  Color(0xFF607D8B),
];

class ProductPieChart extends StatelessWidget {
  const ProductPieChart({super.key, required this.data});

  final List<ProductSalesModel> data;

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

    final sections = data.mapIndexed((index, item) {
      final color = _kChartColors[index % _kChartColors.length];
      return PieChartSectionData(
        value: item.percentage,
        color: color,
        radius: 50.r,
        title: '',
        showTitle: false,
      );
    }).toList();

    return Column(
      children: [
        SizedBox(
          height: 180.h,
          child: PieChart(
            PieChartData(
              sections: sections,
              centerSpaceRadius: 40.r,
              sectionsSpace: 2,
            ),
          ),
        ),
        SizedBox(height: 12.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Wrap(
            spacing: 16.w,
            runSpacing: 8.h,
            children: data.mapIndexed((index, item) {
              final color = _kChartColors[index % _kChartColors.length];
              return Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 10.w,
                    height: 10.h,
                    decoration: BoxDecoration(
                      color: color,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(width: 4.w),
                  Text(
                    '${item.productName} ${item.percentage.toStringAsFixed(1)}%',
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
