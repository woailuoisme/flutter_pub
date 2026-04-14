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

import 'package:lunchbox_hub/core/widgets/card_widgets/premium_card.dart';

/// 用户中心视图 (我的)
class ProfileView extends ConsumerWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
            physics: const AlwaysScrollableScrollPhysics(),
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
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
                sliver: SliverToBoxAdapter(
                  child: PremiumCard(
                    padding: EdgeInsets.zero, // Keep zero for menu tiles
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ProfileMenuTile(
                          icon: Symbols.person,
                          title: t.profile.personalInfo,
                          onTap: () => context.push(
                            '${AppRoutes.profile}/${AppRoutes.personalInfo}',
                          ),
                          showDivider: true,
                        ),
                        ProfileMenuTile(
                          icon: Symbols.feedback,
                          title: t.profile.feedback,
                          onTap: () => context.push(
                            '${AppRoutes.profile}/${AppRoutes.feedback}',
                          ),
                          showDivider: true,
                        ),
                        ProfileMenuTile(
                          icon: Symbols.settings,
                          title: t.profile.settings,
                          onTap: () =>
                              const SettingsRoute().push<void>(context),
                          showDivider: true,
                        ),
                        ProfileMenuTile(
                          icon: Symbols.info,
                          title: t.profile.about,
                          onTap: () => const AboutUsRoute().push<void>(context),
                          showDivider: false,
                        ),
                      ],
                    ),
                  ).animate().fadeIn(duration: 400.ms, delay: 200.ms),
                ),
              ),

              SliverToBoxAdapter(child: SizedBox(height: 40.h)),
            ],
          ),
        ),
      ),
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
      if (context.mounted) {
        context.go(AppRoutes.signin); // Use go instead of push for logout
      }
    }
  }
}
