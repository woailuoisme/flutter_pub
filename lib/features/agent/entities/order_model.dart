import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

@freezed
sealed class OrderModel with _$OrderModel {
  const factory OrderModel({
    required String id,
    @JsonKey(name: 'machine_id') required String machineId,
    @JsonKey(name: 'product_name') required String productName,
    required String amount, // Decimal 以字符串传输，如 "3.50"
    @JsonKey(name: 'created_at') required String createdAt,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}
