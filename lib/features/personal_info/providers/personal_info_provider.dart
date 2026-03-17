import 'dart:io';
import 'package:lunchbox_hub/features/personal_info/repositories/personal_info_repository.dart';
import 'package:lunchbox_hub/features/profile/providers/profile_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'personal_info_provider.g.dart';

@riverpod
class PersonalInfoNotifier extends _$PersonalInfoNotifier {
  @override
  FutureOr<void> build() {
    // 初始状态为空
  }

  /// 更新用户信息
  ///
  /// 调用 repository 更新用户信息，并使 profileProvider 失效以重新加载最新数据
  Future<bool> updateProfile({
    String? name,
    String? mobile,
    File? avatar,
  }) async {
    state = const AsyncLoading();
    bool success = false;

    state = await AsyncValue.guard(() async {
      // 获取当前个人信息用于对比
      final profileState = await ref.read(profileProvider.future);
      final profile = profileState.currentUser;
      if (profile == null) throw Exception('User profile not loaded');

      final repository = ref.read(personalInfoRepositoryProvider);

      // 只有在值发生变化时才传递参数，避免向 API 发送未修改的字段
      final updatedName = (name != null && name != profile.name) ? name : null;
      final updatedMobile = (mobile != null && mobile != profile.mobile)
          ? mobile
          : null;

      // 如果没有任何修改且没有新头像，直接返回成功
      if (updatedName == null && updatedMobile == null && avatar == null) {
        success = true;
        return;
      }

      final result = await repository.updateProfile(
        name: updatedName,
        mobile: updatedMobile,
        avatar: avatar,
      );

      if (result != null) {
        // 更新成功后刷新全局用户信息
        ref.invalidate(profileProvider);
        success = true;
      }
    });

    return success;
  }
}
