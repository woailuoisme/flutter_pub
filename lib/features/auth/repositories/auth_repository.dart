import 'package:lunchbox_hub/core/constants/app_constants.dart';
import 'package:lunchbox_hub/core/services/storage_service.dart';
import 'package:lunchbox_hub/core/utils/logger_utils.dart';
import 'package:lunchbox_hub/features/auth/datasources/auth_rest_client.dart';
import 'package:lunchbox_hub/features/auth/entities/user_model.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_repository.g.dart';

@Riverpod(keepAlive: true)
AuthRepository authRepository(Ref ref) {
  final remoteDataSource = ref.watch(authRemoteDataSourceProvider);
  final storageService = ref.watch(storageServiceProvider);
  return AuthRepository(remoteDataSource, storageService);
}

class AuthRepository {
  AuthRepository(this._remoteDataSource, this._storageService);

  final AuthRemoteDataSource _remoteDataSource;
  final StorageService _storageService;

  Future<UserModel> login({
    required String username,
    required String password,
  }) async {
    final response = await _remoteDataSource.login({
      'name': username,
      'password': password,
    });

    if (response.success && response.data != null) {
      final data = response.data!;
      final token = data.token;
      // 由于新响应中没有 id，我们暂时使用 name 作为 id
      final userId = data.name ?? username;
      final permissions = data.roles.map((e) => e.name.nameString).toList();

      final user = UserModel(
        id: userId,
        username: data.name ?? username,
        nickname: data.name ?? username,
        registeredAt: data.createAt ?? '',
        avatar: data.avatar,
      );

      final role = permissions.isNotEmpty ? permissions.first : 'ops';
      LoggerUtils.d(
        'AuthRepository: Saving session - role=$role, permissions=$permissions',
      );

      await _writeSession(
        token: token,
        userId: userId,
        userRole: role,
        permissions: permissions.isNotEmpty ? permissions : ['ops'],
      );

      LoggerUtils.i(
        'AuthRepository: Login successful for user: ${user.username}',
      );
      return user;
    }
    throw response.message;
  }

  Future<UserModel> register({
    required String email,
    required String password,
    required String passwordConfirmation,
  }) async {
    final response = await _remoteDataSource.register({
      'email': email,
      'password': password,
      'password_confirmation': passwordConfirmation,
    });

    if (response.success && response.data != null) {
      final data = response.data!;
      final token = data.token;
      final userId = data.name ?? email;
      final permissions = data.roles.map((e) => e.name.nameString).toList();

      final user = UserModel(
        id: userId,
        username: data.name ?? email,
        nickname: data.name ?? email,
        registeredAt: data.createAt ?? '',
        avatar: data.avatar,
      );

      await _writeSession(
        token: token,
        userId: userId,
        userRole: permissions.isNotEmpty ? permissions.first : 'ops',
        permissions: permissions.isNotEmpty ? permissions : ['ops'],
      );

      LoggerUtils.i(
        'AuthRepository: Registration successful for user: ${user.username}',
      );
      return user;
    }
    throw response.message;
  }

  Future<void> logout() async {
    // 仅清除认证相关的 Token 和用户信息，保留 keyIsFirstLaunch 等配置数据
    await _storageService.remove(AppConstants.keyAuthToken);
    await _storageService.remove(AppConstants.keyUserId);
    await _storageService.remove(AppConstants.keyUserPermissions);
    // 可选：清除购物车
    await _storageService.remove(AppConstants.keyCart);

    LoggerUtils.i('AuthRepository: User logged out');
  }

  Future<void> resetPassword({
    required String email,
    required String oldPassword,
    required String newPassword,
    required String confirmPassword,
  }) async {
    final response = await _remoteDataSource.resetPassword({
      'email': email,
      'old_password': oldPassword,
      'new_password': newPassword,
      'new_password_confirmation': confirmPassword,
    });

    if (!response.success) {
      throw response.message;
    }
  }

  /// 仅清除 Token
  Future<void> clearToken() async {
    await _storageService.remove(AppConstants.keyAuthToken);
    LoggerUtils.i('AuthRepository: Auth token cleared (401)');
  }

  bool isLoggedIn() {
    return _storageService.read<String>(AppConstants.keyAuthToken) != null;
  }

  UserModel _handleAuthData(Map<String, dynamic> data, String logMessage) {
    final token = data['token'] as String;
    final user = UserModel.fromJson(data['user'] as Map<String, dynamic>);

    final permissions =
        (data['permissions'] as List<dynamic>?)?.cast<String>() ?? ['ops'];
    _writeSession(
      token: token,
      userId: user.id,
      userRole: permissions.first,
      permissions: permissions,
    );

    LoggerUtils.i('AuthRepository: $logMessage for user: ${user.username}');
    return user;
  }

  Future<void> _writeSession({
    required String token,
    required String userId,
    required String userRole,
    required List<String> permissions,
  }) async {
    await _storageService.write(AppConstants.keyAuthToken, token);
    await _storageService.write(AppConstants.keyUserId, userId);
    await _storageService.write(AppConstants.keyUserRole, userRole);
    await _storageService.write(AppConstants.keyUserPermissions, permissions);
  }
}
