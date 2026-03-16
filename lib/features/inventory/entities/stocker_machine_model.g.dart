// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stocker_machine_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StockerMachineModel _$StockerMachineModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_StockerMachineModel',
      json,
      ($checkedConvert) {
        final val = _StockerMachineModel(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          location: $checkedConvert('location', (v) => v as String),
          totalSlots: $checkedConvert(
            'total_slots',
            (v) => (v as num?)?.toInt() ?? 0,
          ),
          lowStockSlots: $checkedConvert(
            'low_stock_slots',
            (v) => (v as num?)?.toInt() ?? 0,
          ),
          emptySlots: $checkedConvert(
            'empty_slots',
            (v) => (v as num?)?.toInt() ?? 0,
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'totalSlots': 'total_slots',
        'lowStockSlots': 'low_stock_slots',
        'emptySlots': 'empty_slots',
      },
    );

Map<String, dynamic> _$StockerMachineModelToJson(
  _StockerMachineModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'location': instance.location,
  'total_slots': instance.totalSlots,
  'low_stock_slots': instance.lowStockSlots,
  'empty_slots': instance.emptySlots,
};
