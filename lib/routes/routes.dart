import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lunchbox_hub/core/utils/page_transition_page.dart';
import 'package:lunchbox_hub/features/auth/auth.dart';
import 'package:lunchbox_hub/features/splash/splash.dart';

import 'package:lunchbox_hub/routes/app_routes.dart';
import 'package:page_transition/page_transition.dart';

part 'routes.g.dart';

// 启动页面
@TypedGoRoute<SplashRoute>(path: AppRoutes.splash)
class SplashRoute extends GoRouteData with $SplashRoute {
  const SplashRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const SplashView();
}

// 认证相关路由
@TypedGoRoute<SignInRoute>(path: AppRoutes.signin)
class SignInRoute extends GoRouteData with $SignInRoute {
  const SignInRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      PageTransitionPage(
        key: state.pageKey,
        child: const SimpleSignInView(),
        type: PageTransitionType.rightToLeft,
      );
}

@TypedGoRoute<ComplexSignInRoute>(path: AppRoutes.complexSignIn)
class ComplexSignInRoute extends GoRouteData with $ComplexSignInRoute {
  const ComplexSignInRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      PageTransitionPage(
        key: state.pageKey,
        child: const SignInView(),
        type: PageTransitionType.rightToLeft,
      );
}

@TypedGoRoute<SignUpRoute>(path: AppRoutes.signup)
class SignUpRoute extends GoRouteData with $SignUpRoute {
  const SignUpRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      PageTransitionPage(
        key: state.pageKey,
        child: const SignUpView(),
        type: PageTransitionType.rightToLeft,
      );
}

@TypedGoRoute<ForgotPasswordRoute>(path: AppRoutes.forgotPassword)
class ForgotPasswordRoute extends GoRouteData with $ForgotPasswordRoute {
  const ForgotPasswordRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      PageTransitionPage(
        key: state.pageKey,
        child: const ForgotPasswordView(),
        type: PageTransitionType.rightToLeft,
      );
}

@TypedGoRoute<ResetPasswordRoute>(path: AppRoutes.resetPassword)
class ResetPasswordRoute extends GoRouteData with $ResetPasswordRoute {
  const ResetPasswordRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ResetPasswordView();
}
