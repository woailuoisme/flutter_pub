import 'package:freezed_annotation/freezed_annotation.dart';

part 'agent_machine_model.freezed.dart';
part 'agent_machine_model.g.dart';

@freezed
sealed class AgentMachineModel with _$AgentMachineModel {
  const factory AgentMachineModel({
    required String id,
    required String name,
    required String location,
    @JsonKey(name: 'total_orders') @Default(0) int totalOrders,
    @JsonKey(name: 'total_revenue') @Default('0.00') String totalRevenue,
  }) = _AgentMachineModel;

  factory AgentMachineModel.fromJson(Map<String, dynamic> json) =>
      _$AgentMachineModelFromJson(json);
}
