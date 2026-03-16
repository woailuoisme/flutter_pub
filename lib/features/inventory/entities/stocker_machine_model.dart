import 'package:freezed_annotation/freezed_annotation.dart';

part 'stocker_machine_model.freezed.dart';
part 'stocker_machine_model.g.dart';

@freezed
sealed class StockerMachineModel with _$StockerMachineModel {
  const factory StockerMachineModel({
    required String id,
    required String name,
    required String location,
    @JsonKey(name: 'total_slots') @Default(0) int totalSlots,
    @JsonKey(name: 'low_stock_slots') @Default(0) int lowStockSlots,
    @JsonKey(name: 'empty_slots') @Default(0) int emptySlots,
  }) = _StockerMachineModel;

  factory StockerMachineModel.fromJson(Map<String, dynamic> json) =>
      _$StockerMachineModelFromJson(json);
}
