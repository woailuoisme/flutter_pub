// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserRole _$UserRoleFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_UserRole', json, ($checkedConvert) {
      final val = _UserRole(
        name: $checkedConvert(
          'name',
          (v) => $enumDecode(_$UserRoleTypeEnumMap, v),
        ),
        summary: $checkedConvert('summary', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$UserRoleToJson(_UserRole instance) => <String, dynamic>{
  'name': _$UserRoleTypeEnumMap[instance.name]!,
  'summary': ?instance.summary,
};

const _$UserRoleTypeEnumMap = {
  UserRoleType.agent: 'agent',
  UserRoleType.operator: 'operator',
  UserRoleType.ops: 'ops',
  UserRoleType.editor: 'editor',
};

_LoginResponseData _$LoginResponseDataFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_LoginResponseData',
      json,
      ($checkedConvert) {
        final val = _LoginResponseData(
          token: $checkedConvert('token', (v) => v as String),
          tokenType: $checkedConvert('token_type', (v) => v as String?),
          name: $checkedConvert('name', (v) => v as String?),
          avatar: $checkedConvert('avatar', (v) => v as String?),
          roles: $checkedConvert(
            'roles',
            (v) =>
                (v as List<dynamic>?)
                    ?.map((e) => UserRole.fromJson(e as Map<String, dynamic>))
                    .toList() ??
                const [],
          ),
          expiresIn: $checkedConvert('expires_in', (v) => v as String?),
          createAt: $checkedConvert('create_at', (v) => v as String?),
          expiresAt: $checkedConvert('expires_at', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'tokenType': 'token_type',
        'expiresIn': 'expires_in',
        'createAt': 'create_at',
        'expiresAt': 'expires_at',
      },
    );

Map<String, dynamic> _$LoginResponseDataToJson(_LoginResponseData instance) =>
    <String, dynamic>{
      'token': instance.token,
      'token_type': ?instance.tokenType,
      'name': ?instance.name,
      'avatar': ?instance.avatar,
      'roles': instance.roles.map((e) => e.toJson()).toList(),
      'expires_in': ?instance.expiresIn,
      'create_at': ?instance.createAt,
      'expires_at': ?instance.expiresAt,
    };
