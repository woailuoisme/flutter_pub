// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
  $mainShellRouteData,
  $signInRoute,
  $complexSignInRoute,
  $signUpRoute,
  $forgotPasswordRoute,
  $resetPasswordRoute,
  $settingsRoute,
  $agentMachineListRoute,
  $notificationListRoute,
];

RouteBase get $mainShellRouteData => StatefulShellRouteData.$route(
  factory: $MainShellRouteDataExtension._fromState,
  branches: [
    StatefulShellBranchData.$branch(
      routes: [
        GoRouteData.$route(
          path: '/agent/dashboard',
          hasOverriddenOnExit: false,
          factory: $AgentDashboardRoute._fromState,
        ),
      ],
    ),
    StatefulShellBranchData.$branch(
      routes: [
        GoRouteData.$route(
          path: '/stocker/machines',
          hasOverriddenOnExit: false,
          factory: $StockerMachineListRoute._fromState,
          routes: [
            GoRouteData.$route(
              path: ':machineId/slots',
              hasOverriddenOnExit: false,
              factory: $StockerSlotListRoute._fromState,
            ),
          ],
        ),
      ],
    ),
    StatefulShellBranchData.$branch(
      routes: [
        GoRouteData.$route(
          path: '/maintainer/machines',
          hasOverriddenOnExit: false,
          factory: $MaintainerMachineListRoute._fromState,
          routes: [
            GoRouteData.$route(
              path: ':machineId/faults',
              hasOverriddenOnExit: false,
              factory: $MaintainerFaultListRoute._fromState,
            ),
          ],
        ),
      ],
    ),
    StatefulShellBranchData.$branch(
      routes: [
        GoRouteData.$route(
          path: '/profile',
          hasOverriddenOnExit: false,
          factory: $ProfileRoute._fromState,
          routes: [
            GoRouteData.$route(
              path: 'personal-info',
              hasOverriddenOnExit: false,
              factory: $PersonalInfoRoute._fromState,
            ),
            GoRouteData.$route(
              path: 'feedback',
              hasOverriddenOnExit: false,
              factory: $FeedbackRoute._fromState,
            ),
          ],
        ),
      ],
    ),
  ],
);

extension $MainShellRouteDataExtension on MainShellRouteData {
  static MainShellRouteData _fromState(GoRouterState state) =>
      const MainShellRouteData();
}

mixin $AgentDashboardRoute on GoRouteData {
  static AgentDashboardRoute _fromState(GoRouterState state) =>
      const AgentDashboardRoute();

  @override
  String get location => GoRouteData.$location('/agent/dashboard');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $StockerMachineListRoute on GoRouteData {
  static StockerMachineListRoute _fromState(GoRouterState state) =>
      const StockerMachineListRoute();

  @override
  String get location => GoRouteData.$location('/stocker/machines');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $StockerSlotListRoute on GoRouteData {
  static StockerSlotListRoute _fromState(GoRouterState state) =>
      StockerSlotListRoute(machineId: state.pathParameters['machineId']!);

  StockerSlotListRoute get _self => this as StockerSlotListRoute;

  @override
  String get location => GoRouteData.$location(
    '/stocker/machines/${Uri.encodeComponent(_self.machineId)}/slots',
  );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $MaintainerMachineListRoute on GoRouteData {
  static MaintainerMachineListRoute _fromState(GoRouterState state) =>
      const MaintainerMachineListRoute();

  @override
  String get location => GoRouteData.$location('/maintainer/machines');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $MaintainerFaultListRoute on GoRouteData {
  static MaintainerFaultListRoute _fromState(GoRouterState state) =>
      MaintainerFaultListRoute(machineId: state.pathParameters['machineId']!);

  MaintainerFaultListRoute get _self => this as MaintainerFaultListRoute;

  @override
  String get location => GoRouteData.$location(
    '/maintainer/machines/${Uri.encodeComponent(_self.machineId)}/faults',
  );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $ProfileRoute on GoRouteData {
  static ProfileRoute _fromState(GoRouterState state) => const ProfileRoute();

  @override
  String get location => GoRouteData.$location('/profile');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $PersonalInfoRoute on GoRouteData {
  static PersonalInfoRoute _fromState(GoRouterState state) =>
      const PersonalInfoRoute();

  @override
  String get location => GoRouteData.$location('/profile/personal-info');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $FeedbackRoute on GoRouteData {
  static FeedbackRoute _fromState(GoRouterState state) => const FeedbackRoute();

  @override
  String get location => GoRouteData.$location('/profile/feedback');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $signInRoute => GoRouteData.$route(
  path: '/signin',
  hasOverriddenOnExit: false,
  factory: $SignInRoute._fromState,
);

mixin $SignInRoute on GoRouteData {
  static SignInRoute _fromState(GoRouterState state) => const SignInRoute();

  @override
  String get location => GoRouteData.$location('/signin');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $complexSignInRoute => GoRouteData.$route(
  path: '/complex-signin',
  hasOverriddenOnExit: false,
  factory: $ComplexSignInRoute._fromState,
);

mixin $ComplexSignInRoute on GoRouteData {
  static ComplexSignInRoute _fromState(GoRouterState state) =>
      const ComplexSignInRoute();

  @override
  String get location => GoRouteData.$location('/complex-signin');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $signUpRoute => GoRouteData.$route(
  path: '/signup',
  hasOverriddenOnExit: false,
  factory: $SignUpRoute._fromState,
);

mixin $SignUpRoute on GoRouteData {
  static SignUpRoute _fromState(GoRouterState state) => const SignUpRoute();

  @override
  String get location => GoRouteData.$location('/signup');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $forgotPasswordRoute => GoRouteData.$route(
  path: '/forgot-password',
  hasOverriddenOnExit: false,
  factory: $ForgotPasswordRoute._fromState,
);

mixin $ForgotPasswordRoute on GoRouteData {
  static ForgotPasswordRoute _fromState(GoRouterState state) =>
      const ForgotPasswordRoute();

  @override
  String get location => GoRouteData.$location('/forgot-password');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $resetPasswordRoute => GoRouteData.$route(
  path: '/reset-password',
  hasOverriddenOnExit: false,
  factory: $ResetPasswordRoute._fromState,
);

mixin $ResetPasswordRoute on GoRouteData {
  static ResetPasswordRoute _fromState(GoRouterState state) =>
      const ResetPasswordRoute();

  @override
  String get location => GoRouteData.$location('/reset-password');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $settingsRoute => GoRouteData.$route(
  path: '/settings',
  hasOverriddenOnExit: false,
  factory: $SettingsRoute._fromState,
  routes: [
    GoRouteData.$route(
      path: 'device-info',
      hasOverriddenOnExit: false,
      factory: $DeviceInfoRoute._fromState,
    ),
    GoRouteData.$route(
      path: 'about',
      hasOverriddenOnExit: false,
      factory: $AboutUsRoute._fromState,
    ),
    GoRouteData.$route(
      path: 'debug',
      hasOverriddenOnExit: false,
      factory: $DebugRoute._fromState,
    ),
  ],
);

mixin $SettingsRoute on GoRouteData {
  static SettingsRoute _fromState(GoRouterState state) => const SettingsRoute();

  @override
  String get location => GoRouteData.$location('/settings');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $DeviceInfoRoute on GoRouteData {
  static DeviceInfoRoute _fromState(GoRouterState state) =>
      const DeviceInfoRoute();

  @override
  String get location => GoRouteData.$location('/settings/device-info');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $AboutUsRoute on GoRouteData {
  static AboutUsRoute _fromState(GoRouterState state) => const AboutUsRoute();

  @override
  String get location => GoRouteData.$location('/settings/about');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $DebugRoute on GoRouteData {
  static DebugRoute _fromState(GoRouterState state) => const DebugRoute();

  @override
  String get location => GoRouteData.$location('/settings/debug');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $agentMachineListRoute => GoRouteData.$route(
  path: '/agent/machines',
  hasOverriddenOnExit: false,
  factory: $AgentMachineListRoute._fromState,
  routes: [
    GoRouteData.$route(
      path: ':machineId/orders',
      hasOverriddenOnExit: false,
      factory: $AgentOrderListRoute._fromState,
    ),
    GoRouteData.$route(
      path: ':machineId/detail',
      hasOverriddenOnExit: false,
      factory: $AgentMachineDetailRoute._fromState,
    ),
  ],
);

mixin $AgentMachineListRoute on GoRouteData {
  static AgentMachineListRoute _fromState(GoRouterState state) =>
      const AgentMachineListRoute();

  @override
  String get location => GoRouteData.$location('/agent/machines');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $AgentOrderListRoute on GoRouteData {
  static AgentOrderListRoute _fromState(GoRouterState state) =>
      AgentOrderListRoute(machineId: state.pathParameters['machineId']!);

  AgentOrderListRoute get _self => this as AgentOrderListRoute;

  @override
  String get location => GoRouteData.$location(
    '/agent/machines/${Uri.encodeComponent(_self.machineId)}/orders',
  );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $AgentMachineDetailRoute on GoRouteData {
  static AgentMachineDetailRoute _fromState(GoRouterState state) =>
      AgentMachineDetailRoute(machineId: state.pathParameters['machineId']!);

  AgentMachineDetailRoute get _self => this as AgentMachineDetailRoute;

  @override
  String get location => GoRouteData.$location(
    '/agent/machines/${Uri.encodeComponent(_self.machineId)}/detail',
  );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $notificationListRoute => GoRouteData.$route(
  path: '/notifications',
  hasOverriddenOnExit: false,
  factory: $NotificationListRoute._fromState,
);

mixin $NotificationListRoute on GoRouteData {
  static NotificationListRoute _fromState(GoRouterState state) =>
      const NotificationListRoute();

  @override
  String get location => GoRouteData.$location('/notifications');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}
