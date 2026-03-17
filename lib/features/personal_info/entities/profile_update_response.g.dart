// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_update_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileUpdateData _$ProfileUpdateDataFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_ProfileUpdateData', json, ($checkedConvert) {
      final val = _ProfileUpdateData(
        id: $checkedConvert('id', (v) => (v as num).toInt()),
        name: $checkedConvert('name', (v) => v as String?),
        mobile: $checkedConvert('mobile', (v) => v as String?),
        email: $checkedConvert('email', (v) => v as String?),
        avatar: $checkedConvert('avatar', (v) => v as String?),
        isActive: $checkedConvert('is_active', (v) => v as bool?),
      );
      return val;
    }, fieldKeyMap: const {'isActive': 'is_active'});

Map<String, dynamic> _$ProfileUpdateDataToJson(_ProfileUpdateData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': ?instance.name,
      'mobile': ?instance.mobile,
      'email': ?instance.email,
      'avatar': ?instance.avatar,
      'is_active': ?instance.isActive,
    };
