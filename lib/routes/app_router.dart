import 'package:go_router/go_router.dart';
import 'package:lunchbox_hub/core/constants/app_constants.dart';
import 'package:lunchbox_hub/core/providers/providers.dart';
import 'package:lunchbox_hub/core/services/storage_service.dart';
import 'package:lunchbox_hub/core/utils/logger_utils.dart';
import 'package:lunchbox_hub/features/auth/auth.dart';
import 'package:lunchbox_hub/routes/routes.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

/// GoRouter 配置 Provider
///
/// 提供应用的路由配置，包括：
/// - 认证守卫（redirect 逻辑）
/// - ShellRoute 用于底部导航
/// - 所有应用路由定义
///
/// 验证需求：2.1, 2.4, 2.6
@riverpod
GoRouter goRouter(Ref ref) {
  // 使用共享的 navigator key
  final rootNavigatorKey = ref.watch(navigatorKeyProvider);

  // 监听认证状态变化以触发路由重定向
  final authState = ref.watch(authProvider);
  final isLoggedIn = authState.value ?? false;

  return GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: const SignInRoute().location,
    debugLogDiagnostics: true,

    // 认证守卫：实现 redirect 逻辑
    redirect: (context, state) {
      final isAuthRoute =
          state.matchedLocation == const SignInRoute().location ||
          state.matchedLocation == const ComplexSignInRoute().location ||
          state.matchedLocation == const SignUpRoute().location ||
          state.matchedLocation == const ForgotPasswordRoute().location ||
          state.matchedLocation == const ResetPasswordRoute().location;

      LoggerUtils.d(
        'GoRouter Redirect: path=${state.matchedLocation}, isLoggedIn=$isLoggedIn, isAuthRoute=$isAuthRoute, authLoading=${authState.isLoading}',
      );

      // 如果认证状态还在加载中，不进行任何重定向，保持在当前页面（通常是 Splash）
      if (authState.isLoading) {
        return null;
      }

      // 如果用户未认证且不在认证相关页面，重定向到登录页
      if (!isLoggedIn && !isAuthRoute) {
        return const SignInRoute().location;
      }

      // 读取本地存储的角色
      final storageService = ref.read(storageServiceProvider);
      final role = storageService.read<String>(AppConstants.keyUserRole);

      final roleStr = role?.trim().toLowerCase();

      // 登录成功后根据角色重定向
      if (isLoggedIn && isAuthRoute) {
        LoggerUtils.d(
          'GoRouter Redirect: SUCCESS -> [TEMP] Skipping role check, defaulting to agent dashboard',
        );
        return const AgentDashboardRoute().location;
      }

      // [TEMP] 禁用跨角色访问守卫
      /*
      final path = state.matchedLocation;
      if (isLoggedIn && roleStr != null) {
        if (path.startsWith('/agent') && roleStr != 'agent') {
          return const SignInRoute().location;
        }
        if (path.startsWith('/stocker') && roleStr != 'operator') {
          return const SignInRoute().location;
        }
        if (path.startsWith('/maintainer') && roleStr != 'ops') {
          return const SignInRoute().location;
        }
      }
      */

      // 不需要重定向
      return null;
    },

    routes: $appRoutes,
  );
}
