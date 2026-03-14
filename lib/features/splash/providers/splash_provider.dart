import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lunchbox_hub/core/services/storage_service.dart';
import 'package:lunchbox_hub/core/utils/logger_utils.dart';
import 'package:lunchbox_hub/core/constants/app_constants.dart';
import 'package:lunchbox_hub/features/auth/repositories/auth_repository.dart';
import 'package:lunchbox_hub/routes/app_routes.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'splash_provider.freezed.dart';
part 'splash_provider.g.dart';

@freezed
sealed class SplashState with _$SplashState {
  const factory SplashState({
    @Default(true) bool isLoading,
    String? errorMessage,
    @Default(0.0) double initializationProgress,
    String? navigationPath,
    @Default(false) bool hasInitialized,
    @Default(true) bool isFirstLaunch,
  }) = _SplashState;
}

@Riverpod(keepAlive: true)
class SplashNotifier extends _$SplashNotifier {
  @override
  FutureOr<SplashState> build() {
    Future.microtask(_initializeApp);
    return const SplashState();
  }

  /// 初始化应用程序
  ///
  /// 负责检查服务状态、加载本地配置、验证认证状态以及预加载必要的数据。
  Future<void> _initializeApp() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final authRepository = ref.read(authRepositoryProvider);
      final storageService = ref.read(storageServiceProvider);

      LoggerUtils.i('SplashNotifier: Starting app initialization');

      // 阶段 1：并行执行独立的基础初始化任务
      await _updateProgress(0.4);
      await Future.wait([
        _loadLocalConfig(storageService),
        // 此处可以添加更多独立任务，如初始化第三方 SDK 等
      ]);

      // 阶段 2：检查认证状态
      await _updateProgress(0.7);
      final isLoggedIn = authRepository.isLoggedIn();

      // 阶段 3：完成初始化
      await _updateProgress(1.0);
      await Future<void>.delayed(const Duration(milliseconds: 300));

      final finalState = state.value!.copyWith(hasInitialized: true);
      _determineNavigationPath(isLoggedIn, storageService, finalState);

      LoggerUtils.i('SplashNotifier: Initialization successful');
      return state.value!.copyWith(hasInitialized: true);
    });
  }

  /// 更新初始化进度
  Future<void> _updateProgress(double progress) async {
    final current = state.value;
    if (current != null) {
      state = AsyncData(current.copyWith(initializationProgress: progress));
    }
    LoggerUtils.d('SplashNotifier: Progress ${(progress * 100).toInt()}%');
  }

  /// 加载本地持久化配置
  Future<void> _loadLocalConfig(StorageService storageService) async {
    try {
      final selectedCity = storageService.read<String>(
        AppConstants.keySelectedCity,
      );
      if (selectedCity != null) {
        LoggerUtils.d('SplashNotifier: Local city loaded: $selectedCity');
      }
    } catch (e, stackTrace) {
      LoggerUtils.e('SplashNotifier: Config loading error', e, stackTrace);
    }
  }

  /// 根据当前状态决定跳转路径
  void _determineNavigationPath(
    bool isLoggedIn,
    StorageService storageService,
    SplashState currentState,
  ) {
    // 检查是否是第一次启动
    final isFirstLaunch =
        storageService.read<bool>(AppConstants.keyIsFirstLaunch) ?? true;

    String targetPath;
    if (isLoggedIn) {
      // 登录后默认跳转到 Home 或 SignIn，依逻辑调整
      targetPath = AppRoutes.signin; // 既然 HomeRoute 已删，此处回退到 SignIn 或其他存在的页面
    } else {
      targetPath = AppRoutes.signin;
    }

    state = AsyncData(currentState.copyWith(navigationPath: targetPath));
    LoggerUtils.i('SplashNotifier: Target path -> $targetPath');
  }

  /// 引导页完成后调用：更新导航路径，防止重复显示引导页
  void notifyOnboardingComplete() {
    final current = state.value;
    if (current != null) {
      state = AsyncData(
        current.copyWith(
          navigationPath: AppRoutes.signin,
          isFirstLaunch: false,
        ),
      );
      LoggerUtils.i('SplashNotifier: Onboarding completed, path set to signin');
    }
  }

  /// 重试初始化流程
  Future<void> retryInitialization() => _initializeApp();

  /// 跳过错误并进入登录页
  void skipError() {
    final current = state.value;
    if (current != null) {
      state = AsyncData(current.copyWith(navigationPath: AppRoutes.signin));
    }
  }
}
