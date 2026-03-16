// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderModel _$OrderModelFromJson(Map<String, dynamic> json) => $checkedCreate(
  '_OrderModel',
  json,
  ($checkedConvert) {
    final val = _OrderModel(
      id: $checkedConvert('id', (v) => v as String),
      machineId: $checkedConvert('machine_id', (v) => v as String),
      productName: $checkedConvert('product_name', (v) => v as String),
      amount: $checkedConvert('amount', (v) => v as String),
      createdAt: $checkedConvert('created_at', (v) => v as String),
    );
    return val;
  },
  fieldKeyMap: const {
    'machineId': 'machine_id',
    'productName': 'product_name',
    'createdAt': 'created_at',
  },
);

Map<String, dynamic> _$OrderModelToJson(_OrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'machine_id': instance.machineId,
      'product_name': instance.productName,
      'amount': instance.amount,
      'created_at': instance.createdAt,
    };
