import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response_data.freezed.dart';
part 'login_response_data.g.dart';

/// 角色类型枚举
enum UserRoleType {
  /// 代理商
  @JsonValue('agent')
  agent,

  /// 补货员
  @JsonValue('operator')
  @JsonKey(name: 'operator')
  operator,

  /// 运维员
  @JsonValue('ops')
  ops;

  /// 获取角色显示名称
  String get label => switch (this) {
    agent => '代理商',
    operator => '补货员',
    ops => '运维员',
  };

  /// 获取用于路由匹配的名称
  String get nameString => switch (this) {
    agent => 'agent',
    operator => 'operator',
    ops => 'ops',
  };
}

/// 登录响应数据中的角色信息
@freezed
abstract class UserRole with _$UserRole {
  const factory UserRole({
    /// 角色名称
    required UserRoleType name,

    /// 角色描述
    String? summary,
  }) = _UserRole;

  factory UserRole.fromJson(Map<String, dynamic> json) =>
      _$UserRoleFromJson(json);
}

/// 登录响应数据模型
@freezed
sealed class LoginResponseData with _$LoginResponseData {
  const factory LoginResponseData({
    /// 认证 Token
    required String token,

    /// Token 类型 (例如: bearer)
    @JsonKey(name: 'token_type') String? tokenType,

    /// 管理员名称
    String? name,

    /// 头像地址
    String? avatar,

    /// 角色列表
    @Default([]) List<UserRole> roles,

    /// 过期时长（字符串形式，如 "20160 minutes"）
    @JsonKey(name: 'expires_in') String? expiresIn,

    /// 创建时间 (注意后端返回的是 create_at 而不是 created_at)
    @JsonKey(name: 'create_at') String? createAt,

    /// 过期时间
    @JsonKey(name: 'expires_at') String? expiresAt,
  }) = _LoginResponseData;

  /// 从JSON映射创建 LoginResponseData 实例
  factory LoginResponseData.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseDataFromJson(json);
}
