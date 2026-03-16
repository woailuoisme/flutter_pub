// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_sales_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductSalesModel _$ProductSalesModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_ProductSalesModel', json, ($checkedConvert) {
      final val = _ProductSalesModel(
        productName: $checkedConvert('product_name', (v) => v as String),
        percentage: $checkedConvert('percentage', (v) => (v as num).toDouble()),
        revenue: $checkedConvert('revenue', (v) => v as String),
      );
      return val;
    }, fieldKeyMap: const {'productName': 'product_name'});

Map<String, dynamic> _$ProductSalesModelToJson(_ProductSalesModel instance) =>
    <String, dynamic>{
      'product_name': instance.productName,
      'percentage': instance.percentage,
      'revenue': instance.revenue,
    };
