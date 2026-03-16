import 'package:freezed_annotation/freezed_annotation.dart';

part 'slot_model.freezed.dart';
part 'slot_model.g.dart';

@freezed
sealed class SlotModel with _$SlotModel {
  const factory SlotModel({
    required String id,
    @JsonKey(name: 'machine_id') required String machineId,
    @JsonKey(name: 'slot_number') required String slotNumber,
    @JsonKey(name: 'product_name') required String productName,
    @Default(0) int quantity,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _SlotModel;

  factory SlotModel.fromJson(Map<String, dynamic> json) =>
      _$SlotModelFromJson(json);
}
