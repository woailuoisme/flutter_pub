import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lunchbox_hub/core/services/dialog_service.dart';
import 'package:lunchbox_hub/features/profile/providers/profile_provider.dart';
import 'package:lunchbox_hub/features/profile/widgets/profile_header.dart';
import 'package:lunchbox_hub/features/profile/widgets/profile_menu_tile.dart';
import 'package:lunchbox_hub/i18n/translations.g.dart';
import 'package:lunchbox_hub/routes/app_routes.dart';
import 'package:lunchbox_hub/routes/routes.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lunchbox_hub/core/theme/design_tokens.dart';

/// 用户中心视图 (我的)
class ProfileView extends ConsumerWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final profileState = ref.watch(profileProvider);
    final user = profileState.value?.currentUser;
    final isLoading = profileState.isLoading;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: AppDesignTokens.surfaceGradient(context),
        ),
        child: RefreshIndicator(
          onRefresh: () => ref.read(profileProvider.notifier).loadUserInfo(),
          child: CustomScrollView(
            slivers: [
              // 红色渐变背景头部
              SliverToBoxAdapter(
                child: Skeletonizer(
                  enabled: isLoading,
                  child: ProfileHeader(
                    username: user?.name ?? '...',
                    avatarUrl: user?.avatar,
                    onLogout: () => _handleLogout(context, ref),
                  ),
                ),
              ),

              // 功能列表菜单
              SliverPadding(
                padding: EdgeInsets.only(top: 12.h),
                sliver: SliverToBoxAdapter(
                  child: _buildMenuSection(context, ref),
                ),
              ),

              SliverToBoxAdapter(child: SizedBox(height: 40.h)),
            ],
          ),
        ),
      ),
    );
  }

  /// 构建功能列表菜单
  Widget _buildMenuSection(BuildContext context, WidgetRef ref) {
    return Column(
      children:
          [
                // 个人相关
                ProfileMenuTile(
                  icon: Symbols.person,
                  title: t.profile.personalInfo,
                  onTap: () async => await context.push(
                    '${AppRoutes.profile}/${AppRoutes.personalInfo}',
                  ),
                ),

                ProfileMenuTile(
                  icon: Symbols.help,
                  title: t.profile.feedback,
                  onTap: () async => await context.push(
                    '${AppRoutes.profile}/${AppRoutes.feedback}',
                  ),
                ),

                ProfileMenuTile(
                  icon: Symbols.settings,
                  title: t.profile.settings,
                  onTap: () async => const SettingsRoute().push<void>(context),
                ),

                ProfileMenuTile(
                  icon: Symbols.info,
                  title: t.profile.about,
                  onTap: () async => const AboutUsRoute().push<void>(context),
                  showDivider: false,
                ),
              ]
              .animate(interval: 50.ms)
              .fadeIn(duration: 400.ms, delay: 200.ms)
              .slideX(begin: 0.05, end: 0),
    );
  }

  /// 处理登出逻辑
  Future<void> _handleLogout(BuildContext context, WidgetRef ref) async {
    final confirmed = await ref
        .read(dialogServiceProvider)
        .showConfirm(
          title: t.profile.confirmLogout,
          message: t.profile.confirmLogoutContent,
          context: context,
        );

    if (confirmed == true) {
      await ref.read(profileProvider.notifier).logout();
      // GoRouter 会根据 AuthProvider 的状态自动重定向到登录页
      // 但为了保险起见，如果还在当前页，可以手动跳转
      if (context.mounted) {
        await context.push(AppRoutes.signin);
      }
    }
  }
}
