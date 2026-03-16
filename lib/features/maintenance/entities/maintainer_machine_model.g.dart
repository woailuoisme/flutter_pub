// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'maintainer_machine_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MaintainerMachineModel _$MaintainerMachineModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  '_MaintainerMachineModel',
  json,
  ($checkedConvert) {
    final val = _MaintainerMachineModel(
      id: $checkedConvert('id', (v) => v as String),
      name: $checkedConvert('name', (v) => v as String),
      location: $checkedConvert('location', (v) => v as String),
      faultCount: $checkedConvert(
        'fault_count',
        (v) => (v as num?)?.toInt() ?? 0,
      ),
      lastFaultAt: $checkedConvert('last_fault_at', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {
    'faultCount': 'fault_count',
    'lastFaultAt': 'last_fault_at',
  },
);

Map<String, dynamic> _$MaintainerMachineModelToJson(
  _MaintainerMachineModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'location': instance.location,
  'fault_count': instance.faultCount,
  'last_fault_at': ?instance.lastFaultAt,
};
