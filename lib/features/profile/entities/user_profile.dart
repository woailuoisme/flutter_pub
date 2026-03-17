import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lunchbox_hub/features/auth/entities/login_response_data.dart';

part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

/// 用户个人资料模型
@freezed
sealed class UserProfile with _$UserProfile {
  const factory UserProfile({
    /// 用户ID
    required int id,

    /// 管理员名称
    required String name,

    /// 手机号
    String? mobile,

    /// 邮箱
    String? email,

    /// 头像
    String? avatar,

    /// 角色列表
    @Default([]) List<UserRole> roles,

    /// 是否激活
    @JsonKey(name: 'is_active') required bool isActive,

    /// 最后登录时间
    @JsonKey(name: 'last_login_at') String? lastLoginAt,

    /// 创建时间
    @JsonKey(name: 'created_at') String? createdAt,

    /// 更新时间
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _UserProfile;

  /// 从JSON映射创建 UserProfile 实例
  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);
}
