// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserProfile _$UserProfileFromJson(Map<String, dynamic> json) => $checkedCreate(
  '_UserProfile',
  json,
  ($checkedConvert) {
    final val = _UserProfile(
      id: $checkedConvert('id', (v) => (v as num).toInt()),
      name: $checkedConvert('name', (v) => v as String),
      mobile: $checkedConvert('mobile', (v) => v as String?),
      email: $checkedConvert('email', (v) => v as String?),
      avatar: $checkedConvert('avatar', (v) => v as String?),
      roles: $checkedConvert(
        'roles',
        (v) =>
            (v as List<dynamic>?)
                ?.map((e) => UserRole.fromJson(e as Map<String, dynamic>))
                .toList() ??
            const [],
      ),
      isActive: $checkedConvert('is_active', (v) => v as bool),
      lastLoginAt: $checkedConvert('last_login_at', (v) => v as String?),
      createdAt: $checkedConvert('created_at', (v) => v as String?),
      updatedAt: $checkedConvert('updated_at', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {
    'isActive': 'is_active',
    'lastLoginAt': 'last_login_at',
    'createdAt': 'created_at',
    'updatedAt': 'updated_at',
  },
);

Map<String, dynamic> _$UserProfileToJson(_UserProfile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'mobile': ?instance.mobile,
      'email': ?instance.email,
      'avatar': ?instance.avatar,
      'roles': instance.roles.map((e) => e.toJson()).toList(),
      'is_active': instance.isActive,
      'last_login_at': ?instance.lastLoginAt,
      'created_at': ?instance.createdAt,
      'updated_at': ?instance.updatedAt,
    };
