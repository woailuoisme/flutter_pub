// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_machine_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AgentMachineModel _$AgentMachineModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_AgentMachineModel',
      json,
      ($checkedConvert) {
        final val = _AgentMachineModel(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          location: $checkedConvert('location', (v) => v as String),
          totalOrders: $checkedConvert(
            'total_orders',
            (v) => (v as num?)?.toInt() ?? 0,
          ),
          totalRevenue: $checkedConvert(
            'total_revenue',
            (v) => v as String? ?? '0.00',
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'totalOrders': 'total_orders',
        'totalRevenue': 'total_revenue',
      },
    );

Map<String, dynamic> _$AgentMachineModelToJson(_AgentMachineModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'location': instance.location,
      'total_orders': instance.totalOrders,
      'total_revenue': instance.totalRevenue,
    };
