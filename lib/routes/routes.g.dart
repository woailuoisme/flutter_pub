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
  $agentMachineListRoute,
];

RouteBase get $mainShellRouteData => StatefulShellRouteData.$route(
  factory: $MainShellRouteDataExtension._fromState,
  branches: [
    StatefulShellBranchData.$branch(
      routes: [
        GoRouteData.$route(
          path: '/agent/dashboard',
          factory: $AgentDashboardRoute._fromState,
        ),
      ],
    ),
    StatefulShellBranchData.$branch(
      routes: [
        GoRouteData.$route(
          path: '/stocker/machines',
          factory: $StockerMachineListRoute._fromState,
          routes: [
            GoRouteData.$route(
              path: ':machineId/slots',
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
          factory: $MaintainerMachineListRoute._fromState,
          routes: [
            GoRouteData.$route(
              path: ':machineId/faults',
              factory: $MaintainerFaultListRoute._fromState,
            ),
          ],
        ),
      ],
    ),
    StatefulShellBranchData.$branch(
      routes: [
        GoRouteData.$route(path: '/profile', factory: $ProfileRoute._fromState),
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

RouteBase get $signInRoute =>
    GoRouteData.$route(path: '/signin', factory: $SignInRoute._fromState);

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

RouteBase get $signUpRoute =>
    GoRouteData.$route(path: '/signup', factory: $SignUpRoute._fromState);

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

RouteBase get $agentMachineListRoute => GoRouteData.$route(
  path: '/agent/machines',
  factory: $AgentMachineListRoute._fromState,
  routes: [
    GoRouteData.$route(
      path: ':machineId/orders',
      factory: $AgentOrderListRoute._fromState,
    ),
    GoRouteData.$route(
      path: ':machineId/detail',
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
