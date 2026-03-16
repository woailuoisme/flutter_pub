// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fault_record_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FaultRecordModel _$FaultRecordModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_FaultRecordModel',
      json,
      ($checkedConvert) {
        final val = _FaultRecordModel(
          id: $checkedConvert('id', (v) => v as String),
          machineId: $checkedConvert('machine_id', (v) => v as String),
          faultType: $checkedConvert('fault_type', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
          status: $checkedConvert(
            'status',
            (v) =>
                $enumDecodeNullable(_$FaultStatusEnumMap, v) ??
                FaultStatus.pending,
          ),
          occurredAt: $checkedConvert('occurred_at', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'machineId': 'machine_id',
        'faultType': 'fault_type',
        'occurredAt': 'occurred_at',
      },
    );

Map<String, dynamic> _$FaultRecordModelToJson(_FaultRecordModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'machine_id': instance.machineId,
      'fault_type': instance.faultType,
      'description': instance.description,
      'status': _$FaultStatusEnumMap[instance.status]!,
      'occurred_at': instance.occurredAt,
    };

const _$FaultStatusEnumMap = {
  FaultStatus.pending: 'pending',
  FaultStatus.resolved: 'resolved',
};
