// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slot_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SlotModel _$SlotModelFromJson(Map<String, dynamic> json) => $checkedCreate(
  '_SlotModel',
  json,
  ($checkedConvert) {
    final val = _SlotModel(
      id: $checkedConvert('id', (v) => v as String),
      machineId: $checkedConvert('machine_id', (v) => v as String),
      slotNumber: $checkedConvert('slot_number', (v) => v as String),
      productName: $checkedConvert('product_name', (v) => v as String),
      quantity: $checkedConvert('quantity', (v) => (v as num?)?.toInt() ?? 0),
      updatedAt: $checkedConvert('updated_at', (v) => v as String),
    );
    return val;
  },
  fieldKeyMap: const {
    'machineId': 'machine_id',
    'slotNumber': 'slot_number',
    'productName': 'product_name',
    'updatedAt': 'updated_at',
  },
);

Map<String, dynamic> _$SlotModelToJson(_SlotModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'machine_id': instance.machineId,
      'slot_number': instance.slotNumber,
      'product_name': instance.productName,
      'quantity': instance.quantity,
      'updated_at': instance.updatedAt,
    };
