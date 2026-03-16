import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_sales_model.freezed.dart';
part 'product_sales_model.g.dart';

@freezed
sealed class ProductSalesModel with _$ProductSalesModel {
  const factory ProductSalesModel({
    @JsonKey(name: 'product_name') required String productName,
    required double percentage, // 0.0 ~ 100.0
    required String revenue,
  }) = _ProductSalesModel;

  factory ProductSalesModel.fromJson(Map<String, dynamic> json) =>
      _$ProductSalesModelFromJson(json);
}
