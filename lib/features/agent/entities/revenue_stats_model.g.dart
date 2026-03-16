// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'revenue_stats_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TimeSeriesPoint _$TimeSeriesPointFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_TimeSeriesPoint', json, ($checkedConvert) {
      final val = _TimeSeriesPoint(
        label: $checkedConvert('label', (v) => v as String),
        value: $checkedConvert('value', (v) => (v as num).toDouble()),
      );
      return val;
    });

Map<String, dynamic> _$TimeSeriesPointToJson(_TimeSeriesPoint instance) =>
    <String, dynamic>{'label': instance.label, 'value': instance.value};

_MachineRevenuePoint _$MachineRevenuePointFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_MachineRevenuePoint',
      json,
      ($checkedConvert) {
        final val = _MachineRevenuePoint(
          machineId: $checkedConvert('machine_id', (v) => v as String),
          machineName: $checkedConvert('machine_name', (v) => v as String),
          revenue: $checkedConvert('revenue', (v) => (v as num).toDouble()),
        );
        return val;
      },
      fieldKeyMap: const {
        'machineId': 'machine_id',
        'machineName': 'machine_name',
      },
    );

Map<String, dynamic> _$MachineRevenuePointToJson(
  _MachineRevenuePoint instance,
) => <String, dynamic>{
  'machine_id': instance.machineId,
  'machine_name': instance.machineName,
  'revenue': instance.revenue,
};

_RevenueStatsModel _$RevenueStatsModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_RevenueStatsModel',
      json,
      ($checkedConvert) {
        final val = _RevenueStatsModel(
          totalRevenue: $checkedConvert(
            'total_revenue',
            (v) => v as String? ?? '0.00',
          ),
          totalOrders: $checkedConvert(
            'total_orders',
            (v) => (v as num?)?.toInt() ?? 0,
          ),
          dailyAvgRevenue: $checkedConvert(
            'daily_avg_revenue',
            (v) => v as String? ?? '0.00',
          ),
          growthRate: $checkedConvert(
            'growth_rate',
            (v) => (v as num?)?.toDouble() ?? 0.0,
          ),
          revenueTrend: $checkedConvert(
            'revenue_trend',
            (v) =>
                (v as List<dynamic>?)
                    ?.map(
                      (e) =>
                          TimeSeriesPoint.fromJson(e as Map<String, dynamic>),
                    )
                    .toList() ??
                const [],
          ),
          orderTrend: $checkedConvert(
            'order_trend',
            (v) =>
                (v as List<dynamic>?)
                    ?.map(
                      (e) =>
                          TimeSeriesPoint.fromJson(e as Map<String, dynamic>),
                    )
                    .toList() ??
                const [],
          ),
          productSales: $checkedConvert(
            'product_sales',
            (v) =>
                (v as List<dynamic>?)
                    ?.map(
                      (e) =>
                          ProductSalesModel.fromJson(e as Map<String, dynamic>),
                    )
                    .toList() ??
                const [],
          ),
          machineRevenues: $checkedConvert(
            'machine_revenues',
            (v) =>
                (v as List<dynamic>?)
                    ?.map(
                      (e) => MachineRevenuePoint.fromJson(
                        e as Map<String, dynamic>,
                      ),
                    )
                    .toList() ??
                const [],
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'totalRevenue': 'total_revenue',
        'totalOrders': 'total_orders',
        'dailyAvgRevenue': 'daily_avg_revenue',
        'growthRate': 'growth_rate',
        'revenueTrend': 'revenue_trend',
        'orderTrend': 'order_trend',
        'productSales': 'product_sales',
        'machineRevenues': 'machine_revenues',
      },
    );

Map<String, dynamic> _$RevenueStatsModelToJson(
  _RevenueStatsModel instance,
) => <String, dynamic>{
  'total_revenue': instance.totalRevenue,
  'total_orders': instance.totalOrders,
  'daily_avg_revenue': instance.dailyAvgRevenue,
  'growth_rate': instance.growthRate,
  'revenue_trend': instance.revenueTrend.map((e) => e.toJson()).toList(),
  'order_trend': instance.orderTrend.map((e) => e.toJson()).toList(),
  'product_sales': instance.productSales.map((e) => e.toJson()).toList(),
  'machine_revenues': instance.machineRevenues.map((e) => e.toJson()).toList(),
};
