import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lunchbox_hub/features/agent/entities/product_sales_model.dart';

part 'revenue_stats_model.freezed.dart';
part 'revenue_stats_model.g.dart';

/// 时间维度枚举
enum TimePeriod { day, week, month, quarter, year }

/// 时间序列数据点（折线图 / 柱状图 X-Y 数据）
@freezed
sealed class TimeSeriesPoint with _$TimeSeriesPoint {
  const factory TimeSeriesPoint({
    required String label, // X 轴标签，如 "01/15"、"1月"
    required double value, // Y 轴值
  }) = _TimeSeriesPoint;

  factory TimeSeriesPoint.fromJson(Map<String, dynamic> json) =>
      _$TimeSeriesPointFromJson(json);
}

/// 机器收益数据点（仪表盘对比图用）
@freezed
sealed class MachineRevenuePoint with _$MachineRevenuePoint {
  const factory MachineRevenuePoint({
    @JsonKey(name: 'machine_id') required String machineId,
    @JsonKey(name: 'machine_name') required String machineName,
    required double revenue,
  }) = _MachineRevenuePoint;

  factory MachineRevenuePoint.fromJson(Map<String, dynamic> json) =>
      _$MachineRevenuePointFromJson(json);
}

/// 营收统计模型（API 响应）
@freezed
sealed class RevenueStatsModel with _$RevenueStatsModel {
  const factory RevenueStatsModel({
    @JsonKey(name: 'total_revenue') @Default('0.00') String totalRevenue,
    @JsonKey(name: 'total_orders') @Default(0) int totalOrders,
    @JsonKey(name: 'daily_avg_revenue') @Default('0.00') String dailyAvgRevenue,
    @JsonKey(name: 'growth_rate') @Default(0.0) double growthRate,
    @JsonKey(name: 'total_machines') @Default(0) int totalMachines,
    @JsonKey(name: 'revenue_trend')
    @Default([])
    List<TimeSeriesPoint> revenueTrend,
    @JsonKey(name: 'order_trend') @Default([]) List<TimeSeriesPoint> orderTrend,
    @JsonKey(name: 'product_sales')
    @Default([])
    List<ProductSalesModel> productSales,
    @JsonKey(name: 'machine_revenues')
    @Default([])
    List<MachineRevenuePoint> machineRevenues,
  }) = _RevenueStatsModel;

  factory RevenueStatsModel.fromJson(Map<String, dynamic> json) =>
      _$RevenueStatsModelFromJson(json);
}
