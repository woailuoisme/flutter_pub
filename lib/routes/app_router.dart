import 'package:go_router/go_router.dart';
import 'package:lunchbox_hub/core/providers/providers.dart';
import 'package:lunchbox_hub/features/auth/auth.dart';
import 'package:lunchbox_hub/features/splash/splash.dart';
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
  final splashAsync = ref.watch(splashProvider);
  final splashState = splashAsync.value;
  final hasInitialized = splashState?.hasInitialized ?? false;
  // isFirstLaunch 由 SplashNotifier 管理，完成引导后会被设为 false
  final isFirstLaunch = splashState?.isFirstLaunch ?? true;

  return GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: const SplashRoute().location,
    debugLogDiagnostics: true,

    // 认证守卫：实现 redirect 逻辑
    redirect: (context, state) {
      final isSplashRoute =
          state.matchedLocation == const SplashRoute().location;

      // 如果已经初始化完成，不允许再回到 Splash 屏
      if (hasInitialized && isSplashRoute) {
        final navigationPath = splashState?.navigationPath;

        // 如果导航路径不再可用或指向 HomeRoute，默认回 SignIn
        if (navigationPath == null || navigationPath == '/home') {
          return const SignInRoute().location;
        }

        return navigationPath;
      }

      final isAuthRoute =
          state.matchedLocation == const SignInRoute().location ||
          state.matchedLocation == const ComplexSignInRoute().location ||
          state.matchedLocation == const SignUpRoute().location ||
          state.matchedLocation == const ForgotPasswordRoute().location ||
          state.matchedLocation == const ResetPasswordRoute().location ||
          isSplashRoute;

      // 如果用户未认证且不在认证相关页面，重定向到登录页
      if (!isLoggedIn && !isAuthRoute) {
        return const SignInRoute().location;
      }

      // 不需要重定向
      return null;
    },

    routes: $appRoutes,
  );
}
