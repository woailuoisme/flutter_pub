///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'package:slang/overrides.dart';
import 'translations.g.dart';

// Path: <root>
class TranslationsEn extends Translations with BaseTranslations<AppLocale, Translations> {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  /// [AppLocaleUtils.buildWithOverrides] is recommended for overriding.
  TranslationsEn({
    Map<String, Node>? overrides,
    PluralResolver? cardinalResolver,
    PluralResolver? ordinalResolver,
    TranslationMetadata<AppLocale, Translations>? meta,
  }) : $meta =
           meta ??
           TranslationMetadata(
             locale: AppLocale.en,
             overrides: overrides ?? {},
             cardinalResolver: cardinalResolver,
             ordinalResolver: ordinalResolver,
           ),
       super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
    super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <en>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Access flat map
  @override
  dynamic operator [](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

  late final TranslationsEn _root = this; // ignore: unused_field

  @override
  TranslationsEn $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) =>
      TranslationsEn(meta: meta ?? this.$meta);

  // Translations
  @override
  late final _TranslationsAuthEn auth = _TranslationsAuthEn._(_root);
  @override
  late final _TranslationsCommonEn common = _TranslationsCommonEn._(_root);
  @override
  late final _TranslationsNavigationEn navigation = _TranslationsNavigationEn._(_root);
  @override
  late final _TranslationsNetworkEn network = _TranslationsNetworkEn._(_root);
  @override
  late final _TranslationsSplashEn splash = _TranslationsSplashEn._(_root);
  @override
  late final _TranslationsTimeEn time = _TranslationsTimeEn._(_root);
}

// Path: auth
class _TranslationsAuthEn extends TranslationsAuthZhCn {
  _TranslationsAuthEn._(TranslationsEn root) : this._root = root, super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get loginTitle => TranslationOverrides.string(_root.$meta, 'auth.loginTitle', {}) ?? 'Welcome Back';
  @override
  String get loginButton => TranslationOverrides.string(_root.$meta, 'auth.loginButton', {}) ?? 'Login';
  @override
  String get registerButton => TranslationOverrides.string(_root.$meta, 'auth.registerButton', {}) ?? 'Register';
  @override
  String get forgotPassword =>
      TranslationOverrides.string(_root.$meta, 'auth.forgotPassword', {}) ?? 'Forgot Password?';
  @override
  String get loginFailed => TranslationOverrides.string(_root.$meta, 'auth.loginFailed', {}) ?? 'Login Failed';
  @override
  String get loginSuccess => TranslationOverrides.string(_root.$meta, 'auth.loginSuccess', {}) ?? 'Login Success';
  @override
  String get registerTitle => TranslationOverrides.string(_root.$meta, 'auth.registerTitle', {}) ?? 'Create Account';
  @override
  String get nickname => TranslationOverrides.string(_root.$meta, 'auth.nickname', {}) ?? 'Nickname';
  @override
  String get registerSuccess =>
      TranslationOverrides.string(_root.$meta, 'auth.registerSuccess', {}) ?? 'Register Success';
  @override
  String get registerFailed => TranslationOverrides.string(_root.$meta, 'auth.registerFailed', {}) ?? 'Register Failed';
  @override
  String get forgotPasswordTitle =>
      TranslationOverrides.string(_root.$meta, 'auth.forgotPasswordTitle', {}) ?? 'Reset Password';
  @override
  String get sendResetLink => TranslationOverrides.string(_root.$meta, 'auth.sendResetLink', {}) ?? 'Send Reset Link';
  @override
  String get resetLinkSent => TranslationOverrides.string(_root.$meta, 'auth.resetLinkSent', {}) ?? 'Reset Link Sent';
  @override
  String get required => TranslationOverrides.string(_root.$meta, 'auth.required', {}) ?? 'Required';
  @override
  String get enterUsername =>
      TranslationOverrides.string(_root.$meta, 'auth.enterUsername', {}) ?? 'Please enter username';
  @override
  String get enterPassword =>
      TranslationOverrides.string(_root.$meta, 'auth.enterPassword', {}) ?? 'Please enter password';
  @override
  String get enterUsernameHint =>
      TranslationOverrides.string(_root.$meta, 'auth.enterUsernameHint', {}) ?? 'Enter username or phone';
  @override
  String get passwordLoginTab =>
      TranslationOverrides.string(_root.$meta, 'auth.passwordLoginTab', {}) ?? 'Password Login';
  @override
  String get codeLoginTab => TranslationOverrides.string(_root.$meta, 'auth.codeLoginTab', {}) ?? 'Code Login';
  @override
  String get phoneNumber => TranslationOverrides.string(_root.$meta, 'auth.phoneNumber', {}) ?? 'Phone Number';
  @override
  String get enterPhoneNumber =>
      TranslationOverrides.string(_root.$meta, 'auth.enterPhoneNumber', {}) ?? 'Enter phone number';
  @override
  String get phoneInvalid =>
      TranslationOverrides.string(_root.$meta, 'auth.phoneInvalid', {}) ?? 'Invalid phone number';
  @override
  String get getVerificationCode =>
      TranslationOverrides.string(_root.$meta, 'auth.getVerificationCode', {}) ?? 'Get Code';
  @override
  String retryInSeconds({required Object seconds}) =>
      TranslationOverrides.string(_root.$meta, 'auth.retryInSeconds', {'seconds': seconds}) ?? 'Retry in ${seconds}s';
  @override
  String get otherLoginMethods =>
      TranslationOverrides.string(_root.$meta, 'auth.otherLoginMethods', {}) ?? 'Other login methods';
  @override
  String get enterNickname =>
      TranslationOverrides.string(_root.$meta, 'auth.enterNickname', {}) ?? 'Please enter nickname';
  @override
  String passwordMinLength({required Object length}) =>
      TranslationOverrides.string(_root.$meta, 'auth.passwordMinLength', {'length': length}) ??
      'Password must be at least ${length} characters';
  @override
  String get dontHaveAccount =>
      TranslationOverrides.string(_root.$meta, 'auth.dontHaveAccount', {}) ?? 'Don\'t have an account?';
  @override
  String get resetPasswordHint =>
      TranslationOverrides.string(_root.$meta, 'auth.resetPasswordHint', {}) ??
      'Enter your username or email to reset password';
  @override
  String get usernameOrEmail =>
      TranslationOverrides.string(_root.$meta, 'auth.usernameOrEmail', {}) ?? 'Username / Email';
  @override
  String get slogan =>
      TranslationOverrides.string(_root.$meta, 'auth.slogan', {}) ?? 'Convenient purchase, delicious on the go';
  @override
  String get resendCode => TranslationOverrides.string(_root.$meta, 'auth.resendCode', {}) ?? 'Resend Code';
  @override
  String get email => TranslationOverrides.string(_root.$meta, 'auth.email', {}) ?? 'Email';
  @override
  String get enterEmail => TranslationOverrides.string(_root.$meta, 'auth.enterEmail', {}) ?? 'Please enter email';
  @override
  String get emailInvalid =>
      TranslationOverrides.string(_root.$meta, 'auth.emailInvalid', {}) ?? 'Invalid email address';
  @override
  String get oldPassword => TranslationOverrides.string(_root.$meta, 'auth.oldPassword', {}) ?? 'Old Password';
  @override
  String get enterOldPassword =>
      TranslationOverrides.string(_root.$meta, 'auth.enterOldPassword', {}) ?? 'Please enter old password';
  @override
  String get newPassword => TranslationOverrides.string(_root.$meta, 'auth.newPassword', {}) ?? 'New Password';
  @override
  String get enterNewPassword =>
      TranslationOverrides.string(_root.$meta, 'auth.enterNewPassword', {}) ?? 'Please enter new password';
  @override
  String get resetPasswordButton =>
      TranslationOverrides.string(_root.$meta, 'auth.resetPasswordButton', {}) ?? 'Reset Password';
  @override
  String get resetPasswordSuccess =>
      TranslationOverrides.string(_root.$meta, 'auth.resetPasswordSuccess', {}) ?? 'Password reset successful';
  @override
  String get resetPasswordFailed =>
      TranslationOverrides.string(_root.$meta, 'auth.resetPasswordFailed', {}) ?? 'Password reset failed';
  @override
  String get confirmPassword =>
      TranslationOverrides.string(_root.$meta, 'auth.confirmPassword', {}) ?? 'Confirm Password';
  @override
  String get enterConfirmPassword =>
      TranslationOverrides.string(_root.$meta, 'auth.enterConfirmPassword', {}) ?? 'Please enter password again';
  @override
  String get passwordNotMatch =>
      TranslationOverrides.string(_root.$meta, 'auth.passwordNotMatch', {}) ?? 'Passwords do not match';
}

// Path: common
class _TranslationsCommonEn extends TranslationsCommonZhCn {
  _TranslationsCommonEn._(TranslationsEn root) : this._root = root, super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get login => TranslationOverrides.string(_root.$meta, 'common.login', {}) ?? 'Login';
  @override
  String get register => TranslationOverrides.string(_root.$meta, 'common.register', {}) ?? 'Register';
  @override
  String get username => TranslationOverrides.string(_root.$meta, 'common.username', {}) ?? 'Username';
  @override
  String get password => TranslationOverrides.string(_root.$meta, 'common.password', {}) ?? 'Password';
  @override
  String get confirm => TranslationOverrides.string(_root.$meta, 'common.confirm', {}) ?? 'Confirm';
  @override
  String get cancel => TranslationOverrides.string(_root.$meta, 'common.cancel', {}) ?? 'Cancel';
  @override
  String get error => TranslationOverrides.string(_root.$meta, 'common.error', {}) ?? 'Error';
  @override
  String get success => TranslationOverrides.string(_root.$meta, 'common.success', {}) ?? 'Success';
  @override
  String get loading => TranslationOverrides.string(_root.$meta, 'common.loading', {}) ?? 'Loading...';
  @override
  String get ok => TranslationOverrides.string(_root.$meta, 'common.ok', {}) ?? 'OK';
  @override
  String get save => TranslationOverrides.string(_root.$meta, 'common.save', {}) ?? 'Save';
  @override
  String get delete => TranslationOverrides.string(_root.$meta, 'common.delete', {}) ?? 'Delete';
  @override
  String get edit => TranslationOverrides.string(_root.$meta, 'common.edit', {}) ?? 'Edit';
  @override
  String get search => TranslationOverrides.string(_root.$meta, 'common.search', {}) ?? 'Search';
  @override
  String get noData => TranslationOverrides.string(_root.$meta, 'common.noData', {}) ?? 'No Data';
  @override
  String get retry => TranslationOverrides.string(_root.$meta, 'common.retry', {}) ?? 'Retry';
  @override
  String get skip => TranslationOverrides.string(_root.$meta, 'common.skip', {}) ?? 'Skip';
  @override
  String get refresh => TranslationOverrides.string(_root.$meta, 'common.refresh', {}) ?? 'Refresh';
  @override
  String get loadFailed => TranslationOverrides.string(_root.$meta, 'common.loadFailed', {}) ?? 'Load Failed';
  @override
  String get unknownError => TranslationOverrides.string(_root.$meta, 'common.unknownError', {}) ?? 'Unknown Error';
  @override
  String get info => TranslationOverrides.string(_root.$meta, 'common.info', {}) ?? 'Info';
  @override
  String get developing =>
      TranslationOverrides.string(_root.$meta, 'common.developing', {}) ?? 'Page is under development';
  @override
  String get appName => TranslationOverrides.string(_root.$meta, 'common.appName', {}) ?? 'E-Lunchbox';
  @override
  String get logout => TranslationOverrides.string(_root.$meta, 'common.logout', {}) ?? 'Logout';
  @override
  String get pullToRefresh => TranslationOverrides.string(_root.$meta, 'common.pullToRefresh', {}) ?? 'Pull to refresh';
  @override
  String get releaseToRefresh =>
      TranslationOverrides.string(_root.$meta, 'common.releaseToRefresh', {}) ?? 'Release to refresh';
  @override
  String get refreshing => TranslationOverrides.string(_root.$meta, 'common.refreshing', {}) ?? 'Refreshing...';
  @override
  String get noMoreData => TranslationOverrides.string(_root.$meta, 'common.noMoreData', {}) ?? '- No more data -';
  @override
  String price({required Object price}) =>
      TranslationOverrides.string(_root.$meta, 'common.price', {'price': price}) ?? '¥${price}';
  @override
  String networkError({required Object message}) =>
      TranslationOverrides.string(_root.$meta, 'common.networkError', {'message': message}) ??
      'Network Error: ${message}';
  @override
  String networkErrorWithCode({required Object statusCode, required Object message}) =>
      TranslationOverrides.string(_root.$meta, 'common.networkErrorWithCode', {
        'statusCode': statusCode,
        'message': message,
      }) ??
      'Network Error (${statusCode}): ${message}';
  @override
  String serverError({required Object statusCode, required Object message}) =>
      TranslationOverrides.string(_root.$meta, 'common.serverError', {'statusCode': statusCode, 'message': message}) ??
      'Server Error (${statusCode}): ${message}';
  @override
  String cacheError({required Object message}) =>
      TranslationOverrides.string(_root.$meta, 'common.cacheError', {'message': message}) ?? 'Cache Error: ${message}';
  @override
  String notFound({required Object resource}) =>
      TranslationOverrides.string(_root.$meta, 'common.notFound', {'resource': resource}) ?? 'Not Found: ${resource}';
  @override
  String get unauthorized =>
      TranslationOverrides.string(_root.$meta, 'common.unauthorized', {}) ?? 'Unauthorized, please login again';
  @override
  String validationError({required Object message}) =>
      TranslationOverrides.string(_root.$meta, 'common.validationError', {'message': message}) ??
      'Validation Error: ${message}';
  @override
  String validationErrorWithDetails({required Object message, required Object errors}) =>
      TranslationOverrides.string(_root.$meta, 'common.validationErrorWithDetails', {
        'message': message,
        'errors': errors,
      }) ??
      'Validation Error: ${message} (${errors})';
  @override
  String get warning => TranslationOverrides.string(_root.$meta, 'common.warning', {}) ?? 'Warning';
}

// Path: navigation
class _TranslationsNavigationEn extends TranslationsNavigationZhCn {
  _TranslationsNavigationEn._(TranslationsEn root) : this._root = root, super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get home => TranslationOverrides.string(_root.$meta, 'navigation.home', {}) ?? 'Home';
  @override
  String get device => TranslationOverrides.string(_root.$meta, 'navigation.device', {}) ?? 'Devices';
  @override
  String get orders => TranslationOverrides.string(_root.$meta, 'navigation.orders', {}) ?? 'Orders';
  @override
  String get profile => TranslationOverrides.string(_root.$meta, 'navigation.profile', {}) ?? 'Profile';
}

// Path: network
class _TranslationsNetworkEn extends TranslationsNetworkZhCn {
  _TranslationsNetworkEn._(TranslationsEn root) : this._root = root, super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsNetworkErrorsEn errors = _TranslationsNetworkErrorsEn._(_root);
}

// Path: splash
class _TranslationsSplashEn extends TranslationsSplashZhCn {
  _TranslationsSplashEn._(TranslationsEn root) : this._root = root, super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get starting => TranslationOverrides.string(_root.$meta, 'splash.starting', {}) ?? 'Starting...';
  @override
  String get checkingServices =>
      TranslationOverrides.string(_root.$meta, 'splash.checkingServices', {}) ?? 'Checking services...';
  @override
  String get loadingConfig =>
      TranslationOverrides.string(_root.$meta, 'splash.loadingConfig', {}) ?? 'Loading config...';
  @override
  String get checkingAuth =>
      TranslationOverrides.string(_root.$meta, 'splash.checkingAuth', {}) ?? 'Checking auth status...';
  @override
  String get preparingData =>
      TranslationOverrides.string(_root.$meta, 'splash.preparingData', {}) ?? 'Preparing data...';
  @override
  String get ready => TranslationOverrides.string(_root.$meta, 'splash.ready', {}) ?? 'Ready';
  @override
  String get failed => TranslationOverrides.string(_root.$meta, 'splash.failed', {}) ?? 'Start Failed';
}

// Path: time
class _TranslationsTimeEn extends TranslationsTimeZhCn {
  _TranslationsTimeEn._(TranslationsEn root) : this._root = root, super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get justNow => TranslationOverrides.string(_root.$meta, 'time.justNow', {}) ?? 'Just now';
  @override
  String minutesAgo({required Object minutes}) =>
      TranslationOverrides.string(_root.$meta, 'time.minutesAgo', {'minutes': minutes}) ?? '${minutes} minutes ago';
  @override
  String hoursAgo({required Object hours}) =>
      TranslationOverrides.string(_root.$meta, 'time.hoursAgo', {'hours': hours}) ?? '${hours} hours ago';
  @override
  String daysAgo({required Object days}) =>
      TranslationOverrides.string(_root.$meta, 'time.daysAgo', {'days': days}) ?? '${days} days ago';
}

// Path: network.errors
class _TranslationsNetworkErrorsEn extends TranslationsNetworkErrorsZhCn {
  _TranslationsNetworkErrorsEn._(TranslationsEn root) : this._root = root, super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get connectionError =>
      TranslationOverrides.string(_root.$meta, 'network.errors.connectionError', {}) ?? '网络连接失败，请检查您的网络设置';
  @override
  String get failed => TranslationOverrides.string(_root.$meta, 'network.errors.failed', {}) ?? '请求失败，请稍后重试';
  @override
  String get unauthorized =>
      TranslationOverrides.string(_root.$meta, 'network.errors.unauthorized', {}) ?? '登录凭证已过期，请重新登录';
  @override
  String get connectionTimeout =>
      TranslationOverrides.string(_root.$meta, 'network.errors.connectionTimeout', {}) ?? '网络连接超时，请检查您的网络';
  @override
  String get sendTimeout => TranslationOverrides.string(_root.$meta, 'network.errors.sendTimeout', {}) ?? '请求数据发送超时';
  @override
  String get receiveTimeout =>
      TranslationOverrides.string(_root.$meta, 'network.errors.receiveTimeout', {}) ?? '响应数据接收超时';
  @override
  String get badCertificate =>
      TranslationOverrides.string(_root.$meta, 'network.errors.badCertificate', {}) ?? '网络证书验证失败';
  @override
  String get cancel => TranslationOverrides.string(_root.$meta, 'network.errors.cancel', {}) ?? '请求已取消';
  @override
  String unknown({required Object error}) =>
      TranslationOverrides.string(_root.$meta, 'network.errors.unknown', {'error': error}) ?? '网络请求异常: ${error}';
  @override
  String get retryLater => TranslationOverrides.string(_root.$meta, 'network.errors.retryLater', {}) ?? '请稍后重试';
  @override
  String get badRequest => TranslationOverrides.string(_root.$meta, 'network.errors.badRequest', {}) ?? '错误的请求';
  @override
  String get forbidden => TranslationOverrides.string(_root.$meta, 'network.errors.forbidden', {}) ?? '拒绝访问';
  @override
  String get notFound => TranslationOverrides.string(_root.$meta, 'network.errors.notFound', {}) ?? '请求的资源不存在';
  @override
  String get timeout => TranslationOverrides.string(_root.$meta, 'network.errors.timeout', {}) ?? '请求超时';
  @override
  String get conflict => TranslationOverrides.string(_root.$meta, 'network.errors.conflict', {}) ?? '服务器状态冲突';
  @override
  String get validationFailed =>
      TranslationOverrides.string(_root.$meta, 'network.errors.validationFailed', {}) ?? '数据验证失败';
  @override
  String get tooManyRequests =>
      TranslationOverrides.string(_root.$meta, 'network.errors.tooManyRequests', {}) ?? '请求过于频繁，请稍后再试';
  @override
  String get internalServerError =>
      TranslationOverrides.string(_root.$meta, 'network.errors.internalServerError', {}) ?? '服务器内部错误';
  @override
  String get badGateway => TranslationOverrides.string(_root.$meta, 'network.errors.badGateway', {}) ?? '网关错误';
  @override
  String get serviceUnavailable =>
      TranslationOverrides.string(_root.$meta, 'network.errors.serviceUnavailable', {}) ?? '服务不可用';
  @override
  String get gatewayTimeout => TranslationOverrides.string(_root.$meta, 'network.errors.gatewayTimeout', {}) ?? '网关超时';
  @override
  String serverError({required Object code}) =>
      TranslationOverrides.string(_root.$meta, 'network.errors.serverError', {'code': code}) ?? '服务器错误 (${code})';
  @override
  String requestError({required Object code}) =>
      TranslationOverrides.string(_root.$meta, 'network.errors.requestError', {'code': code}) ?? '请求错误 (${code})';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsEn {
  dynamic _flatMapFunction(String path) {
    return switch (path) {
      'auth.loginTitle' => TranslationOverrides.string(_root.$meta, 'auth.loginTitle', {}) ?? 'Welcome Back',
      'auth.loginButton' => TranslationOverrides.string(_root.$meta, 'auth.loginButton', {}) ?? 'Login',
      'auth.registerButton' => TranslationOverrides.string(_root.$meta, 'auth.registerButton', {}) ?? 'Register',
      'auth.forgotPassword' =>
        TranslationOverrides.string(_root.$meta, 'auth.forgotPassword', {}) ?? 'Forgot Password?',
      'auth.loginFailed' => TranslationOverrides.string(_root.$meta, 'auth.loginFailed', {}) ?? 'Login Failed',
      'auth.loginSuccess' => TranslationOverrides.string(_root.$meta, 'auth.loginSuccess', {}) ?? 'Login Success',
      'auth.registerTitle' => TranslationOverrides.string(_root.$meta, 'auth.registerTitle', {}) ?? 'Create Account',
      'auth.nickname' => TranslationOverrides.string(_root.$meta, 'auth.nickname', {}) ?? 'Nickname',
      'auth.registerSuccess' =>
        TranslationOverrides.string(_root.$meta, 'auth.registerSuccess', {}) ?? 'Register Success',
      'auth.registerFailed' => TranslationOverrides.string(_root.$meta, 'auth.registerFailed', {}) ?? 'Register Failed',
      'auth.forgotPasswordTitle' =>
        TranslationOverrides.string(_root.$meta, 'auth.forgotPasswordTitle', {}) ?? 'Reset Password',
      'auth.sendResetLink' => TranslationOverrides.string(_root.$meta, 'auth.sendResetLink', {}) ?? 'Send Reset Link',
      'auth.resetLinkSent' => TranslationOverrides.string(_root.$meta, 'auth.resetLinkSent', {}) ?? 'Reset Link Sent',
      'auth.required' => TranslationOverrides.string(_root.$meta, 'auth.required', {}) ?? 'Required',
      'auth.enterUsername' =>
        TranslationOverrides.string(_root.$meta, 'auth.enterUsername', {}) ?? 'Please enter username',
      'auth.enterPassword' =>
        TranslationOverrides.string(_root.$meta, 'auth.enterPassword', {}) ?? 'Please enter password',
      'auth.enterUsernameHint' =>
        TranslationOverrides.string(_root.$meta, 'auth.enterUsernameHint', {}) ?? 'Enter username or phone',
      'auth.passwordLoginTab' =>
        TranslationOverrides.string(_root.$meta, 'auth.passwordLoginTab', {}) ?? 'Password Login',
      'auth.codeLoginTab' => TranslationOverrides.string(_root.$meta, 'auth.codeLoginTab', {}) ?? 'Code Login',
      'auth.phoneNumber' => TranslationOverrides.string(_root.$meta, 'auth.phoneNumber', {}) ?? 'Phone Number',
      'auth.enterPhoneNumber' =>
        TranslationOverrides.string(_root.$meta, 'auth.enterPhoneNumber', {}) ?? 'Enter phone number',
      'auth.phoneInvalid' =>
        TranslationOverrides.string(_root.$meta, 'auth.phoneInvalid', {}) ?? 'Invalid phone number',
      'auth.getVerificationCode' =>
        TranslationOverrides.string(_root.$meta, 'auth.getVerificationCode', {}) ?? 'Get Code',
      'auth.retryInSeconds' =>
        ({required Object seconds}) =>
            TranslationOverrides.string(_root.$meta, 'auth.retryInSeconds', {'seconds': seconds}) ??
            'Retry in ${seconds}s',
      'auth.otherLoginMethods' =>
        TranslationOverrides.string(_root.$meta, 'auth.otherLoginMethods', {}) ?? 'Other login methods',
      'auth.enterNickname' =>
        TranslationOverrides.string(_root.$meta, 'auth.enterNickname', {}) ?? 'Please enter nickname',
      'auth.passwordMinLength' =>
        ({required Object length}) =>
            TranslationOverrides.string(_root.$meta, 'auth.passwordMinLength', {'length': length}) ??
            'Password must be at least ${length} characters',
      'auth.dontHaveAccount' =>
        TranslationOverrides.string(_root.$meta, 'auth.dontHaveAccount', {}) ?? 'Don\'t have an account?',
      'auth.resetPasswordHint' =>
        TranslationOverrides.string(_root.$meta, 'auth.resetPasswordHint', {}) ??
            'Enter your username or email to reset password',
      'auth.usernameOrEmail' =>
        TranslationOverrides.string(_root.$meta, 'auth.usernameOrEmail', {}) ?? 'Username / Email',
      'auth.slogan' =>
        TranslationOverrides.string(_root.$meta, 'auth.slogan', {}) ?? 'Convenient purchase, delicious on the go',
      'auth.resendCode' => TranslationOverrides.string(_root.$meta, 'auth.resendCode', {}) ?? 'Resend Code',
      'auth.email' => TranslationOverrides.string(_root.$meta, 'auth.email', {}) ?? 'Email',
      'auth.enterEmail' => TranslationOverrides.string(_root.$meta, 'auth.enterEmail', {}) ?? 'Please enter email',
      'auth.emailInvalid' =>
        TranslationOverrides.string(_root.$meta, 'auth.emailInvalid', {}) ?? 'Invalid email address',
      'auth.oldPassword' => TranslationOverrides.string(_root.$meta, 'auth.oldPassword', {}) ?? 'Old Password',
      'auth.enterOldPassword' =>
        TranslationOverrides.string(_root.$meta, 'auth.enterOldPassword', {}) ?? 'Please enter old password',
      'auth.newPassword' => TranslationOverrides.string(_root.$meta, 'auth.newPassword', {}) ?? 'New Password',
      'auth.enterNewPassword' =>
        TranslationOverrides.string(_root.$meta, 'auth.enterNewPassword', {}) ?? 'Please enter new password',
      'auth.resetPasswordButton' =>
        TranslationOverrides.string(_root.$meta, 'auth.resetPasswordButton', {}) ?? 'Reset Password',
      'auth.resetPasswordSuccess' =>
        TranslationOverrides.string(_root.$meta, 'auth.resetPasswordSuccess', {}) ?? 'Password reset successful',
      'auth.resetPasswordFailed' =>
        TranslationOverrides.string(_root.$meta, 'auth.resetPasswordFailed', {}) ?? 'Password reset failed',
      'auth.confirmPassword' =>
        TranslationOverrides.string(_root.$meta, 'auth.confirmPassword', {}) ?? 'Confirm Password',
      'auth.enterConfirmPassword' =>
        TranslationOverrides.string(_root.$meta, 'auth.enterConfirmPassword', {}) ?? 'Please enter password again',
      'auth.passwordNotMatch' =>
        TranslationOverrides.string(_root.$meta, 'auth.passwordNotMatch', {}) ?? 'Passwords do not match',
      'common.login' => TranslationOverrides.string(_root.$meta, 'common.login', {}) ?? 'Login',
      'common.register' => TranslationOverrides.string(_root.$meta, 'common.register', {}) ?? 'Register',
      'common.username' => TranslationOverrides.string(_root.$meta, 'common.username', {}) ?? 'Username',
      'common.password' => TranslationOverrides.string(_root.$meta, 'common.password', {}) ?? 'Password',
      'common.confirm' => TranslationOverrides.string(_root.$meta, 'common.confirm', {}) ?? 'Confirm',
      'common.cancel' => TranslationOverrides.string(_root.$meta, 'common.cancel', {}) ?? 'Cancel',
      'common.error' => TranslationOverrides.string(_root.$meta, 'common.error', {}) ?? 'Error',
      'common.success' => TranslationOverrides.string(_root.$meta, 'common.success', {}) ?? 'Success',
      'common.loading' => TranslationOverrides.string(_root.$meta, 'common.loading', {}) ?? 'Loading...',
      'common.ok' => TranslationOverrides.string(_root.$meta, 'common.ok', {}) ?? 'OK',
      'common.save' => TranslationOverrides.string(_root.$meta, 'common.save', {}) ?? 'Save',
      'common.delete' => TranslationOverrides.string(_root.$meta, 'common.delete', {}) ?? 'Delete',
      'common.edit' => TranslationOverrides.string(_root.$meta, 'common.edit', {}) ?? 'Edit',
      'common.search' => TranslationOverrides.string(_root.$meta, 'common.search', {}) ?? 'Search',
      'common.noData' => TranslationOverrides.string(_root.$meta, 'common.noData', {}) ?? 'No Data',
      'common.retry' => TranslationOverrides.string(_root.$meta, 'common.retry', {}) ?? 'Retry',
      'common.skip' => TranslationOverrides.string(_root.$meta, 'common.skip', {}) ?? 'Skip',
      'common.refresh' => TranslationOverrides.string(_root.$meta, 'common.refresh', {}) ?? 'Refresh',
      'common.loadFailed' => TranslationOverrides.string(_root.$meta, 'common.loadFailed', {}) ?? 'Load Failed',
      'common.unknownError' => TranslationOverrides.string(_root.$meta, 'common.unknownError', {}) ?? 'Unknown Error',
      'common.info' => TranslationOverrides.string(_root.$meta, 'common.info', {}) ?? 'Info',
      'common.developing' =>
        TranslationOverrides.string(_root.$meta, 'common.developing', {}) ?? 'Page is under development',
      'common.appName' => TranslationOverrides.string(_root.$meta, 'common.appName', {}) ?? 'E-Lunchbox',
      'common.logout' => TranslationOverrides.string(_root.$meta, 'common.logout', {}) ?? 'Logout',
      'common.pullToRefresh' =>
        TranslationOverrides.string(_root.$meta, 'common.pullToRefresh', {}) ?? 'Pull to refresh',
      'common.releaseToRefresh' =>
        TranslationOverrides.string(_root.$meta, 'common.releaseToRefresh', {}) ?? 'Release to refresh',
      'common.refreshing' => TranslationOverrides.string(_root.$meta, 'common.refreshing', {}) ?? 'Refreshing...',
      'common.noMoreData' => TranslationOverrides.string(_root.$meta, 'common.noMoreData', {}) ?? '- No more data -',
      'common.price' =>
        ({required Object price}) =>
            TranslationOverrides.string(_root.$meta, 'common.price', {'price': price}) ?? '¥${price}',
      'common.networkError' =>
        ({required Object message}) =>
            TranslationOverrides.string(_root.$meta, 'common.networkError', {'message': message}) ??
            'Network Error: ${message}',
      'common.networkErrorWithCode' =>
        ({required Object statusCode, required Object message}) =>
            TranslationOverrides.string(_root.$meta, 'common.networkErrorWithCode', {
              'statusCode': statusCode,
              'message': message,
            }) ??
            'Network Error (${statusCode}): ${message}',
      'common.serverError' =>
        ({required Object statusCode, required Object message}) =>
            TranslationOverrides.string(_root.$meta, 'common.serverError', {
              'statusCode': statusCode,
              'message': message,
            }) ??
            'Server Error (${statusCode}): ${message}',
      'common.cacheError' =>
        ({required Object message}) =>
            TranslationOverrides.string(_root.$meta, 'common.cacheError', {'message': message}) ??
            'Cache Error: ${message}',
      'common.notFound' =>
        ({required Object resource}) =>
            TranslationOverrides.string(_root.$meta, 'common.notFound', {'resource': resource}) ??
            'Not Found: ${resource}',
      'common.unauthorized' =>
        TranslationOverrides.string(_root.$meta, 'common.unauthorized', {}) ?? 'Unauthorized, please login again',
      'common.validationError' =>
        ({required Object message}) =>
            TranslationOverrides.string(_root.$meta, 'common.validationError', {'message': message}) ??
            'Validation Error: ${message}',
      'common.validationErrorWithDetails' =>
        ({required Object message, required Object errors}) =>
            TranslationOverrides.string(_root.$meta, 'common.validationErrorWithDetails', {
              'message': message,
              'errors': errors,
            }) ??
            'Validation Error: ${message} (${errors})',
      'common.warning' => TranslationOverrides.string(_root.$meta, 'common.warning', {}) ?? 'Warning',
      'navigation.home' => TranslationOverrides.string(_root.$meta, 'navigation.home', {}) ?? 'Home',
      'navigation.device' => TranslationOverrides.string(_root.$meta, 'navigation.device', {}) ?? 'Devices',
      'navigation.orders' => TranslationOverrides.string(_root.$meta, 'navigation.orders', {}) ?? 'Orders',
      'navigation.profile' => TranslationOverrides.string(_root.$meta, 'navigation.profile', {}) ?? 'Profile',
      'network.errors.connectionError' =>
        TranslationOverrides.string(_root.$meta, 'network.errors.connectionError', {}) ?? '网络连接失败，请检查您的网络设置',
      'network.errors.failed' => TranslationOverrides.string(_root.$meta, 'network.errors.failed', {}) ?? '请求失败，请稍后重试',
      'network.errors.unauthorized' =>
        TranslationOverrides.string(_root.$meta, 'network.errors.unauthorized', {}) ?? '登录凭证已过期，请重新登录',
      'network.errors.connectionTimeout' =>
        TranslationOverrides.string(_root.$meta, 'network.errors.connectionTimeout', {}) ?? '网络连接超时，请检查您的网络',
      'network.errors.sendTimeout' =>
        TranslationOverrides.string(_root.$meta, 'network.errors.sendTimeout', {}) ?? '请求数据发送超时',
      'network.errors.receiveTimeout' =>
        TranslationOverrides.string(_root.$meta, 'network.errors.receiveTimeout', {}) ?? '响应数据接收超时',
      'network.errors.badCertificate' =>
        TranslationOverrides.string(_root.$meta, 'network.errors.badCertificate', {}) ?? '网络证书验证失败',
      'network.errors.cancel' => TranslationOverrides.string(_root.$meta, 'network.errors.cancel', {}) ?? '请求已取消',
      'network.errors.unknown' =>
        ({required Object error}) =>
            TranslationOverrides.string(_root.$meta, 'network.errors.unknown', {'error': error}) ?? '网络请求异常: ${error}',
      'network.errors.retryLater' =>
        TranslationOverrides.string(_root.$meta, 'network.errors.retryLater', {}) ?? '请稍后重试',
      'network.errors.badRequest' =>
        TranslationOverrides.string(_root.$meta, 'network.errors.badRequest', {}) ?? '错误的请求',
      'network.errors.forbidden' => TranslationOverrides.string(_root.$meta, 'network.errors.forbidden', {}) ?? '拒绝访问',
      'network.errors.notFound' =>
        TranslationOverrides.string(_root.$meta, 'network.errors.notFound', {}) ?? '请求的资源不存在',
      'network.errors.timeout' => TranslationOverrides.string(_root.$meta, 'network.errors.timeout', {}) ?? '请求超时',
      'network.errors.conflict' => TranslationOverrides.string(_root.$meta, 'network.errors.conflict', {}) ?? '服务器状态冲突',
      'network.errors.validationFailed' =>
        TranslationOverrides.string(_root.$meta, 'network.errors.validationFailed', {}) ?? '数据验证失败',
      'network.errors.tooManyRequests' =>
        TranslationOverrides.string(_root.$meta, 'network.errors.tooManyRequests', {}) ?? '请求过于频繁，请稍后再试',
      'network.errors.internalServerError' =>
        TranslationOverrides.string(_root.$meta, 'network.errors.internalServerError', {}) ?? '服务器内部错误',
      'network.errors.badGateway' =>
        TranslationOverrides.string(_root.$meta, 'network.errors.badGateway', {}) ?? '网关错误',
      'network.errors.serviceUnavailable' =>
        TranslationOverrides.string(_root.$meta, 'network.errors.serviceUnavailable', {}) ?? '服务不可用',
      'network.errors.gatewayTimeout' =>
        TranslationOverrides.string(_root.$meta, 'network.errors.gatewayTimeout', {}) ?? '网关超时',
      'network.errors.serverError' =>
        ({required Object code}) =>
            TranslationOverrides.string(_root.$meta, 'network.errors.serverError', {'code': code}) ?? '服务器错误 (${code})',
      'network.errors.requestError' =>
        ({required Object code}) =>
            TranslationOverrides.string(_root.$meta, 'network.errors.requestError', {'code': code}) ?? '请求错误 (${code})',
      'splash.starting' => TranslationOverrides.string(_root.$meta, 'splash.starting', {}) ?? 'Starting...',
      'splash.checkingServices' =>
        TranslationOverrides.string(_root.$meta, 'splash.checkingServices', {}) ?? 'Checking services...',
      'splash.loadingConfig' =>
        TranslationOverrides.string(_root.$meta, 'splash.loadingConfig', {}) ?? 'Loading config...',
      'splash.checkingAuth' =>
        TranslationOverrides.string(_root.$meta, 'splash.checkingAuth', {}) ?? 'Checking auth status...',
      'splash.preparingData' =>
        TranslationOverrides.string(_root.$meta, 'splash.preparingData', {}) ?? 'Preparing data...',
      'splash.ready' => TranslationOverrides.string(_root.$meta, 'splash.ready', {}) ?? 'Ready',
      'splash.failed' => TranslationOverrides.string(_root.$meta, 'splash.failed', {}) ?? 'Start Failed',
      'time.justNow' => TranslationOverrides.string(_root.$meta, 'time.justNow', {}) ?? 'Just now',
      'time.minutesAgo' =>
        ({required Object minutes}) =>
            TranslationOverrides.string(_root.$meta, 'time.minutesAgo', {'minutes': minutes}) ??
            '${minutes} minutes ago',
      'time.hoursAgo' =>
        ({required Object hours}) =>
            TranslationOverrides.string(_root.$meta, 'time.hoursAgo', {'hours': hours}) ?? '${hours} hours ago',
      'time.daysAgo' =>
        ({required Object days}) =>
            TranslationOverrides.string(_root.$meta, 'time.daysAgo', {'days': days}) ?? '${days} days ago',
      _ => null,
    };
  }
}
