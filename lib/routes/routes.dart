import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lunchbox_hub/core/utils/page_transition_page.dart';
import 'package:lunchbox_hub/features/auth/auth.dart';
import 'package:lunchbox_hub/features/inventory/screens/stocker_machine_list_screen.dart';
import 'package:lunchbox_hub/features/inventory/screens/stocker_slot_list_screen.dart';
import 'package:lunchbox_hub/features/agent/screens/agent_dashboard_screen.dart';
import 'package:lunchbox_hub/features/agent/screens/agent_machine_detail_screen.dart';
import 'package:lunchbox_hub/features/agent/screens/agent_machine_list_screen.dart';
import 'package:lunchbox_hub/features/agent/screens/agent_order_list_screen.dart';
import 'package:lunchbox_hub/features/maintenance/screens/maintainer_fault_list_screen.dart';
import 'package:lunchbox_hub/features/maintenance/screens/maintainer_machine_list_screen.dart';

import 'package:lunchbox_hub/features/personal_info/screens/user_profile_edit_view.dart';
import 'package:lunchbox_hub/features/feedback/screens/feedback_view.dart';
import 'package:lunchbox_hub/features/profile/screens/profile_view.dart';
import 'package:lunchbox_hub/features/settings/screens/settings_view.dart';
import 'package:lunchbox_hub/features/settings/screens/device_info_view.dart';
import 'package:lunchbox_hub/features/settings/screens/about_view.dart';
import 'package:lunchbox_hub/features/settings/screens/debug_view.dart';
import 'package:lunchbox_hub/core/widgets/gnav_scaffold.dart';
import 'package:lunchbox_hub/routes/app_routes.dart';
import 'package:lunchbox_hub/features/notifications/screens/notification_list_screen.dart';
import 'package:page_transition/page_transition.dart';

part 'routes.g.dart';

// -----------------------------------------------------------------------------
// Shell Route (Bottom Navigation)
// -----------------------------------------------------------------------------

@TypedStatefulShellRoute<MainShellRouteData>(
  branches: <TypedStatefulShellBranch<StatefulShellBranchData>>[
    TypedStatefulShellBranch<MachineBranchData>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<AgentDashboardRoute>(path: AppRoutes.agentDashboard),
      ],
    ),
    TypedStatefulShellBranch<InventoryBranchData>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<StockerMachineListRoute>(
          path: AppRoutes.stockerMachines,
          routes: [
            TypedGoRoute<StockerSlotListRoute>(
              path: ':machineId/${AppRoutes.stockerSlots}',
            ),
          ],
        ),
      ],
    ),
    TypedStatefulShellBranch<MaintenanceBranchData>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<MaintainerMachineListRoute>(
          path: AppRoutes.maintainerMachines,
          routes: [
            TypedGoRoute<MaintainerFaultListRoute>(
              path: ':machineId/${AppRoutes.maintainerFaults}',
            ),
          ],
        ),
      ],
    ),
    TypedStatefulShellBranch<ProfileBranchData>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<ProfileRoute>(
          path: AppRoutes.profile,
          routes: [
            TypedGoRoute<PersonalInfoRoute>(path: AppRoutes.personalInfo),
            TypedGoRoute<FeedbackRoute>(path: AppRoutes.feedback),
          ],
        ),
      ],
    ),
  ],
)
class MainShellRouteData extends StatefulShellRouteData {
  const MainShellRouteData();

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return GNavScaffold(navigationShell: navigationShell);
  }
}

class MachineBranchData extends StatefulShellBranchData {
  const MachineBranchData();
}

class InventoryBranchData extends StatefulShellBranchData {
  const InventoryBranchData();
}

class MaintenanceBranchData extends StatefulShellBranchData {
  const MaintenanceBranchData();
}

class ProfileBranchData extends StatefulShellBranchData {
  const ProfileBranchData();
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

// 设置与系统
@TypedGoRoute<SettingsRoute>(
  path: AppRoutes.settings,
  routes: [
    TypedGoRoute<DeviceInfoRoute>(path: AppRoutes.deviceInfo),
    TypedGoRoute<AboutUsRoute>(path: AppRoutes.about),
    TypedGoRoute<DebugRoute>(path: AppRoutes.debug),
  ],
)
class SettingsRoute extends GoRouteData with $SettingsRoute {
  const SettingsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SettingsView();
}

class DeviceInfoRoute extends GoRouteData with $DeviceInfoRoute {
  const DeviceInfoRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const DeviceInfoView();
}

class AboutUsRoute extends GoRouteData with $AboutUsRoute {
  const AboutUsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const AboutView();
}

class DebugRoute extends GoRouteData with $DebugRoute {
  const DebugRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const DebugView();
}

// 代理商：仪表盘（登录后默认落地页）
class AgentDashboardRoute extends GoRouteData with $AgentDashboardRoute {
  const AgentDashboardRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const AgentDashboardScreen();
}

// 代理商：机器列表（含子路由：订单列表 + 机器详情图表）
@TypedGoRoute<AgentMachineListRoute>(
  path: AppRoutes.agentMachines,
  routes: [
    TypedGoRoute<AgentOrderListRoute>(
      path: ':machineId/${AppRoutes.agentOrders}',
    ),
    TypedGoRoute<AgentMachineDetailRoute>(
      path: ':machineId/${AppRoutes.agentMachineDetail}',
    ),
  ],
)
class AgentMachineListRoute extends GoRouteData with $AgentMachineListRoute {
  const AgentMachineListRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const AgentMachineListScreen();
}

class AgentOrderListRoute extends GoRouteData with $AgentOrderListRoute {
  const AgentOrderListRoute({required this.machineId});

  final String machineId;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      AgentOrderListScreen(machineId: machineId);
}

class AgentMachineDetailRoute extends GoRouteData
    with $AgentMachineDetailRoute {
  const AgentMachineDetailRoute({required this.machineId});

  final String machineId;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      AgentMachineDetailScreen(machineId: machineId);
}

class StockerMachineListRoute extends GoRouteData
    with $StockerMachineListRoute {
  const StockerMachineListRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const StockerMachineListScreen();
}

class StockerSlotListRoute extends GoRouteData with $StockerSlotListRoute {
  const StockerSlotListRoute({required this.machineId});

  final String machineId;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      StockerSlotListScreen(machineId: machineId);
}

// 维护员：机器列表（含子路由：故障记录列表）
class MaintainerMachineListRoute extends GoRouteData
    with $MaintainerMachineListRoute {
  const MaintainerMachineListRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const MaintainerMachineListScreen();
}

class ProfileRoute extends GoRouteData with $ProfileRoute {
  const ProfileRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ProfileView();
}

class PersonalInfoRoute extends GoRouteData with $PersonalInfoRoute {
  const PersonalInfoRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ProfileEditView();
}

class FeedbackRoute extends GoRouteData with $FeedbackRoute {
  const FeedbackRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const FeedbackView();
}

class MaintainerFaultListRoute extends GoRouteData
    with $MaintainerFaultListRoute {
  const MaintainerFaultListRoute({required this.machineId});

  final String machineId;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      MaintainerFaultListScreen(machineId: machineId);
}

@TypedGoRoute<NotificationListRoute>(path: AppRoutes.notifications)
class NotificationListRoute extends GoRouteData with $NotificationListRoute {
  const NotificationListRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const NotificationListScreen();
}
