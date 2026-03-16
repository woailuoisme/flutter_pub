class AppRoutes {
  // 私有构造函数，防止实例化
  AppRoutes._();

  // 认证相关
  static const String signin = '/signin';
  static const String complexSignIn = '/complex-signin';
  static const String signup = '/signup';
  static const String forgotPassword = '/forgot-password';
  static const String resetPassword = '/reset-password';
  static const String profile = '/profile';

  // 设置相关
  static const String settings = '/settings';
  static const String deviceInfo = 'device-info';
  static const String about = 'about';
  static const String debug = 'debug';

  // 代理商路由
  static const String agentDashboard = '/agent/dashboard';
  static const String agentMachines = '/agent/machines';
  static const String agentOrders =
      'orders'; // 子路由：/agent/machines/:machineId/orders
  static const String agentMachineDetail =
      'detail'; // 子路由：/agent/machines/:machineId/detail

  // 补货员路由
  static const String stockerMachines = '/stocker/machines';
  static const String stockerSlots =
      'slots'; // 子路由：/stocker/machines/:machineId/slots

  // 维护员路由
  static const String maintainerMachines = '/maintainer/machines';
  static const String maintainerFaults =
      'faults'; // 子路由：/maintainer/machines/:machineId/faults
}
