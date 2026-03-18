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
          imageUrl: $checkedConvert('image_url', (v) => v as String?),
          latitude: $checkedConvert('latitude', (v) => (v as num?)?.toDouble()),
          longitude: $checkedConvert(
            'longitude',
            (v) => (v as num?)?.toDouble(),
          ),
          sn: $checkedConvert('sn', (v) => v as String?),
          status: $checkedConvert('status', (v) => v as String?),
          description: $checkedConvert('description', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'totalOrders': 'total_orders',
        'totalRevenue': 'total_revenue',
        'imageUrl': 'image_url',
      },
    );

Map<String, dynamic> _$AgentMachineModelToJson(_AgentMachineModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'location': instance.location,
      'total_orders': instance.totalOrders,
      'total_revenue': instance.totalRevenue,
      'image_url': ?instance.imageUrl,
      'latitude': ?instance.latitude,
      'longitude': ?instance.longitude,
      'sn': ?instance.sn,
      'status': ?instance.status,
      'description': ?instance.description,
    };
