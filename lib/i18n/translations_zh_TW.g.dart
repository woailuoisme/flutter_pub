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
class TranslationsZhTw extends Translations with BaseTranslations<AppLocale, Translations> {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  /// [AppLocaleUtils.buildWithOverrides] is recommended for overriding.
  TranslationsZhTw({
    Map<String, Node>? overrides,
    PluralResolver? cardinalResolver,
    PluralResolver? ordinalResolver,
    TranslationMetadata<AppLocale, Translations>? meta,
  }) : $meta =
           meta ??
           TranslationMetadata(
             locale: AppLocale.zhTw,
             overrides: overrides ?? {},
             cardinalResolver: cardinalResolver,
             ordinalResolver: ordinalResolver,
           ),
       super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
    super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <zh-TW>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Access flat map
  @override
  dynamic operator [](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

  late final TranslationsZhTw _root = this; // ignore: unused_field

  @override
  TranslationsZhTw $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) =>
      TranslationsZhTw(meta: meta ?? this.$meta);

  // Translations
  @override
  late final _TranslationsAuthZhTw auth = _TranslationsAuthZhTw._(_root);
  @override
  late final _TranslationsCommonZhTw common = _TranslationsCommonZhTw._(_root);
  @override
  late final _TranslationsNavigationZhTw navigation = _TranslationsNavigationZhTw._(_root);
  @override
  late final _TranslationsNetworkZhTw network = _TranslationsNetworkZhTw._(_root);
  @override
  late final _TranslationsSplashZhTw splash = _TranslationsSplashZhTw._(_root);
  @override
  late final _TranslationsTimeZhTw time = _TranslationsTimeZhTw._(_root);
}

// Path: auth
class _TranslationsAuthZhTw extends TranslationsAuthZhCn {
  _TranslationsAuthZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

  final TranslationsZhTw _root; // ignore: unused_field

  // Translations
  @override
  String get loginTitle => TranslationOverrides.string(_root.$meta, 'auth.loginTitle', {}) ?? '歡迎回來';
  @override
  String get loginButton => TranslationOverrides.string(_root.$meta, 'auth.loginButton', {}) ?? '登入';
  @override
  String get registerButton => TranslationOverrides.string(_root.$meta, 'auth.registerButton', {}) ?? '註冊';
  @override
  String get forgotPassword => TranslationOverrides.string(_root.$meta, 'auth.forgotPassword', {}) ?? '忘記密碼？';
  @override
  String get loginFailed => TranslationOverrides.string(_root.$meta, 'auth.loginFailed', {}) ?? '登入失敗';
  @override
  String get loginSuccess => TranslationOverrides.string(_root.$meta, 'auth.loginSuccess', {}) ?? '登入成功';
  @override
  String get registerTitle => TranslationOverrides.string(_root.$meta, 'auth.registerTitle', {}) ?? '建立帳號';
  @override
  String get nickname => TranslationOverrides.string(_root.$meta, 'auth.nickname', {}) ?? '暱稱';
  @override
  String get registerSuccess => TranslationOverrides.string(_root.$meta, 'auth.registerSuccess', {}) ?? '註冊成功';
  @override
  String get registerFailed => TranslationOverrides.string(_root.$meta, 'auth.registerFailed', {}) ?? '註冊失敗';
  @override
  String get forgotPasswordTitle => TranslationOverrides.string(_root.$meta, 'auth.forgotPasswordTitle', {}) ?? '重設密碼';
  @override
  String get sendResetLink => TranslationOverrides.string(_root.$meta, 'auth.sendResetLink', {}) ?? '發送重設連結';
  @override
  String get resetLinkSent => TranslationOverrides.string(_root.$meta, 'auth.resetLinkSent', {}) ?? '重設連結已發送';
  @override
  String get required => TranslationOverrides.string(_root.$meta, 'auth.required', {}) ?? '必填';
  @override
  String get enterUsername => TranslationOverrides.string(_root.$meta, 'auth.enterUsername', {}) ?? '請輸入使用者名稱';
  @override
  String get enterPassword => TranslationOverrides.string(_root.$meta, 'auth.enterPassword', {}) ?? '請輸入密碼';
  @override
  String get enterUsernameHint =>
      TranslationOverrides.string(_root.$meta, 'auth.enterUsernameHint', {}) ?? '請輸入使用者名稱或手機號碼';
  @override
  String get passwordLoginTab => TranslationOverrides.string(_root.$meta, 'auth.passwordLoginTab', {}) ?? '密碼登入';
  @override
  String get codeLoginTab => TranslationOverrides.string(_root.$meta, 'auth.codeLoginTab', {}) ?? '驗證碼登入';
  @override
  String get phoneNumber => TranslationOverrides.string(_root.$meta, 'auth.phoneNumber', {}) ?? '手機號碼';
  @override
  String get enterPhoneNumber => TranslationOverrides.string(_root.$meta, 'auth.enterPhoneNumber', {}) ?? '請輸入手機號碼';
  @override
  String get phoneInvalid => TranslationOverrides.string(_root.$meta, 'auth.phoneInvalid', {}) ?? '手機號碼格式不正確';
  @override
  String get getVerificationCode => TranslationOverrides.string(_root.$meta, 'auth.getVerificationCode', {}) ?? '取得驗證碼';
  @override
  String retryInSeconds({required Object seconds}) =>
      TranslationOverrides.string(_root.$meta, 'auth.retryInSeconds', {'seconds': seconds}) ?? '${seconds}s 後重試';
  @override
  String get otherLoginMethods => TranslationOverrides.string(_root.$meta, 'auth.otherLoginMethods', {}) ?? '其他登入方式';
  @override
  String get enterNickname => TranslationOverrides.string(_root.$meta, 'auth.enterNickname', {}) ?? '請輸入暱稱';
  @override
  String passwordMinLength({required Object length}) =>
      TranslationOverrides.string(_root.$meta, 'auth.passwordMinLength', {'length': length}) ?? '密碼長度不能少於${length}位';
  @override
  String get dontHaveAccount => TranslationOverrides.string(_root.$meta, 'auth.dontHaveAccount', {}) ?? '還沒有帳號？';
  @override
  String get resetPasswordHint =>
      TranslationOverrides.string(_root.$meta, 'auth.resetPasswordHint', {}) ?? '請輸入您的使用者名稱或電子郵件來重設密碼';
  @override
  String get usernameOrEmail => TranslationOverrides.string(_root.$meta, 'auth.usernameOrEmail', {}) ?? '使用者名稱 / 電子郵件';
  @override
  String get slogan => TranslationOverrides.string(_root.$meta, 'auth.slogan', {}) ?? '便捷購買，美味隨行';
  @override
  String get email => TranslationOverrides.string(_root.$meta, 'auth.email', {}) ?? '電子郵件';
  @override
  String get enterEmail => TranslationOverrides.string(_root.$meta, 'auth.enterEmail', {}) ?? '請輸入電子郵件';
  @override
  String get emailInvalid => TranslationOverrides.string(_root.$meta, 'auth.emailInvalid', {}) ?? '電子郵件格式不正確';
  @override
  String get oldPassword => TranslationOverrides.string(_root.$meta, 'auth.oldPassword', {}) ?? '舊密碼';
  @override
  String get enterOldPassword => TranslationOverrides.string(_root.$meta, 'auth.enterOldPassword', {}) ?? '請輸入舊密碼';
  @override
  String get newPassword => TranslationOverrides.string(_root.$meta, 'auth.newPassword', {}) ?? '新密碼';
  @override
  String get enterNewPassword => TranslationOverrides.string(_root.$meta, 'auth.enterNewPassword', {}) ?? '請輸入新密碼';
  @override
  String get resetPasswordButton => TranslationOverrides.string(_root.$meta, 'auth.resetPasswordButton', {}) ?? '重設密碼';
  @override
  String get resetPasswordSuccess =>
      TranslationOverrides.string(_root.$meta, 'auth.resetPasswordSuccess', {}) ?? '密碼重設成功';
  @override
  String get resetPasswordFailed =>
      TranslationOverrides.string(_root.$meta, 'auth.resetPasswordFailed', {}) ?? '密碼重設失敗';
  @override
  String get confirmPassword => TranslationOverrides.string(_root.$meta, 'auth.confirmPassword', {}) ?? '確認密碼';
  @override
  String get enterConfirmPassword =>
      TranslationOverrides.string(_root.$meta, 'auth.enterConfirmPassword', {}) ?? '請再次輸入密碼';
  @override
  String get passwordNotMatch => TranslationOverrides.string(_root.$meta, 'auth.passwordNotMatch', {}) ?? '兩次輸入的密碼不一致';
}

// Path: common
class _TranslationsCommonZhTw extends TranslationsCommonZhCn {
  _TranslationsCommonZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

  final TranslationsZhTw _root; // ignore: unused_field

  // Translations
  @override
  String get login => TranslationOverrides.string(_root.$meta, 'common.login', {}) ?? '登入';
  @override
  String get register => TranslationOverrides.string(_root.$meta, 'common.register', {}) ?? '註冊';
  @override
  String get username => TranslationOverrides.string(_root.$meta, 'common.username', {}) ?? '使用者名稱';
  @override
  String get password => TranslationOverrides.string(_root.$meta, 'common.password', {}) ?? '密碼';
  @override
  String get confirm => TranslationOverrides.string(_root.$meta, 'common.confirm', {}) ?? '確認';
  @override
  String get cancel => TranslationOverrides.string(_root.$meta, 'common.cancel', {}) ?? '取消';
  @override
  String get error => TranslationOverrides.string(_root.$meta, 'common.error', {}) ?? '錯誤';
  @override
  String get success => TranslationOverrides.string(_root.$meta, 'common.success', {}) ?? '成功';
  @override
  String get loading => TranslationOverrides.string(_root.$meta, 'common.loading', {}) ?? '載入中...';
  @override
  String get ok => TranslationOverrides.string(_root.$meta, 'common.ok', {}) ?? '確定';
  @override
  String get save => TranslationOverrides.string(_root.$meta, 'common.save', {}) ?? '儲存';
  @override
  String get delete => TranslationOverrides.string(_root.$meta, 'common.delete', {}) ?? '刪除';
  @override
  String get edit => TranslationOverrides.string(_root.$meta, 'common.edit', {}) ?? '編輯';
  @override
  String get search => TranslationOverrides.string(_root.$meta, 'common.search', {}) ?? '搜尋';
  @override
  String get noData => TranslationOverrides.string(_root.$meta, 'common.noData', {}) ?? '暫無數據';
  @override
  String get retry => TranslationOverrides.string(_root.$meta, 'common.retry', {}) ?? '重試';
  @override
  String get skip => TranslationOverrides.string(_root.$meta, 'common.skip', {}) ?? '跳過';
  @override
  String get refresh => TranslationOverrides.string(_root.$meta, 'common.refresh', {}) ?? '重新整理';
  @override
  String get loadFailed => TranslationOverrides.string(_root.$meta, 'common.loadFailed', {}) ?? '載入失敗';
  @override
  String get unknownError => TranslationOverrides.string(_root.$meta, 'common.unknownError', {}) ?? '未知錯誤';
  @override
  String get info => TranslationOverrides.string(_root.$meta, 'common.info', {}) ?? '提示';
  @override
  String get developing => TranslationOverrides.string(_root.$meta, 'common.developing', {}) ?? '頁面正在开发中';
  @override
  String get appName => TranslationOverrides.string(_root.$meta, 'common.appName', {}) ?? '好小乖';
  @override
  String get logout => TranslationOverrides.string(_root.$meta, 'common.logout', {}) ?? '登出';
  @override
  String get pullToRefresh => TranslationOverrides.string(_root.$meta, 'common.pullToRefresh', {}) ?? '下拉重新整理';
  @override
  String get releaseToRefresh => TranslationOverrides.string(_root.$meta, 'common.releaseToRefresh', {}) ?? '釋放重新整理';
  @override
  String get refreshing => TranslationOverrides.string(_root.$meta, 'common.refreshing', {}) ?? '正在重新整理...';
  @override
  String get noMoreData => TranslationOverrides.string(_root.$meta, 'common.noMoreData', {}) ?? '- 已經到底啦 -';
  @override
  String price({required Object price}) =>
      TranslationOverrides.string(_root.$meta, 'common.price', {'price': price}) ?? '¥${price}';
  @override
  String networkError({required Object message}) =>
      TranslationOverrides.string(_root.$meta, 'common.networkError', {'message': message}) ?? '網路錯誤：${message}';
  @override
  String networkErrorWithCode({required Object statusCode, required Object message}) =>
      TranslationOverrides.string(_root.$meta, 'common.networkErrorWithCode', {
        'statusCode': statusCode,
        'message': message,
      }) ??
      '網路錯誤 (${statusCode})：${message}';
  @override
  String serverError({required Object statusCode, required Object message}) =>
      TranslationOverrides.string(_root.$meta, 'common.serverError', {'statusCode': statusCode, 'message': message}) ??
      '伺服器錯誤 (${statusCode})：${message}';
  @override
  String cacheError({required Object message}) =>
      TranslationOverrides.string(_root.$meta, 'common.cacheError', {'message': message}) ?? '快取錯誤：${message}';
  @override
  String notFound({required Object resource}) =>
      TranslationOverrides.string(_root.$meta, 'common.notFound', {'resource': resource}) ?? '未找到：${resource}';
  @override
  String get unauthorized => TranslationOverrides.string(_root.$meta, 'common.unauthorized', {}) ?? '未授權，請重新登入';
  @override
  String validationError({required Object message}) =>
      TranslationOverrides.string(_root.$meta, 'common.validationError', {'message': message}) ?? '驗證錯誤：${message}';
  @override
  String validationErrorWithDetails({required Object message, required Object errors}) =>
      TranslationOverrides.string(_root.$meta, 'common.validationErrorWithDetails', {
        'message': message,
        'errors': errors,
      }) ??
      '驗證錯誤：${message} (${errors})';
  @override
  String get warning => TranslationOverrides.string(_root.$meta, 'common.warning', {}) ?? '警告';
}

// Path: navigation
class _TranslationsNavigationZhTw extends TranslationsNavigationZhCn {
  _TranslationsNavigationZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

  final TranslationsZhTw _root; // ignore: unused_field

  // Translations
  @override
  String get home => TranslationOverrides.string(_root.$meta, 'navigation.home', {}) ?? '首頁';
  @override
  String get device => TranslationOverrides.string(_root.$meta, 'navigation.device', {}) ?? '設備';
  @override
  String get orders => TranslationOverrides.string(_root.$meta, 'navigation.orders', {}) ?? '訂單';
  @override
  String get profile => TranslationOverrides.string(_root.$meta, 'navigation.profile', {}) ?? '我的';
}

// Path: network
class _TranslationsNetworkZhTw extends TranslationsNetworkZhCn {
  _TranslationsNetworkZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

  final TranslationsZhTw _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsNetworkErrorsZhTw errors = _TranslationsNetworkErrorsZhTw._(_root);
}

// Path: splash
class _TranslationsSplashZhTw extends TranslationsSplashZhCn {
  _TranslationsSplashZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

  final TranslationsZhTw _root; // ignore: unused_field

  // Translations
  @override
  String get starting => TranslationOverrides.string(_root.$meta, 'splash.starting', {}) ?? '正在啟動...';
  @override
  String get checkingServices => TranslationOverrides.string(_root.$meta, 'splash.checkingServices', {}) ?? '檢查服務狀態...';
  @override
  String get loadingConfig => TranslationOverrides.string(_root.$meta, 'splash.loadingConfig', {}) ?? '載入配置...';
  @override
  String get checkingAuth => TranslationOverrides.string(_root.$meta, 'splash.checkingAuth', {}) ?? '檢查登入狀態...';
  @override
  String get preparingData => TranslationOverrides.string(_root.$meta, 'splash.preparingData', {}) ?? '準備數據...';
  @override
  String get ready => TranslationOverrides.string(_root.$meta, 'splash.ready', {}) ?? '啟動完成';
  @override
  String get failed => TranslationOverrides.string(_root.$meta, 'splash.failed', {}) ?? '啟動失敗';
}

// Path: time
class _TranslationsTimeZhTw extends TranslationsTimeZhCn {
  _TranslationsTimeZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

  final TranslationsZhTw _root; // ignore: unused_field

  // Translations
  @override
  String get justNow => TranslationOverrides.string(_root.$meta, 'time.justNow', {}) ?? '剛剛';
  @override
  String minutesAgo({required Object minutes}) =>
      TranslationOverrides.string(_root.$meta, 'time.minutesAgo', {'minutes': minutes}) ?? '${minutes} 分鐘前';
  @override
  String hoursAgo({required Object hours}) =>
      TranslationOverrides.string(_root.$meta, 'time.hoursAgo', {'hours': hours}) ?? '${hours} 小時前';
  @override
  String daysAgo({required Object days}) =>
      TranslationOverrides.string(_root.$meta, 'time.daysAgo', {'days': days}) ?? '${days} 天前';
}

// Path: network.errors
class _TranslationsNetworkErrorsZhTw extends TranslationsNetworkErrorsZhCn {
  _TranslationsNetworkErrorsZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

  final TranslationsZhTw _root; // ignore: unused_field

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

/// The flat map containing all translations for locale <zh-TW>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsZhTw {
  dynamic _flatMapFunction(String path) {
    return switch (path) {
      'auth.loginTitle' => TranslationOverrides.string(_root.$meta, 'auth.loginTitle', {}) ?? '歡迎回來',
      'auth.loginButton' => TranslationOverrides.string(_root.$meta, 'auth.loginButton', {}) ?? '登入',
      'auth.registerButton' => TranslationOverrides.string(_root.$meta, 'auth.registerButton', {}) ?? '註冊',
      'auth.forgotPassword' => TranslationOverrides.string(_root.$meta, 'auth.forgotPassword', {}) ?? '忘記密碼？',
      'auth.loginFailed' => TranslationOverrides.string(_root.$meta, 'auth.loginFailed', {}) ?? '登入失敗',
      'auth.loginSuccess' => TranslationOverrides.string(_root.$meta, 'auth.loginSuccess', {}) ?? '登入成功',
      'auth.registerTitle' => TranslationOverrides.string(_root.$meta, 'auth.registerTitle', {}) ?? '建立帳號',
      'auth.nickname' => TranslationOverrides.string(_root.$meta, 'auth.nickname', {}) ?? '暱稱',
      'auth.registerSuccess' => TranslationOverrides.string(_root.$meta, 'auth.registerSuccess', {}) ?? '註冊成功',
      'auth.registerFailed' => TranslationOverrides.string(_root.$meta, 'auth.registerFailed', {}) ?? '註冊失敗',
      'auth.forgotPasswordTitle' => TranslationOverrides.string(_root.$meta, 'auth.forgotPasswordTitle', {}) ?? '重設密碼',
      'auth.sendResetLink' => TranslationOverrides.string(_root.$meta, 'auth.sendResetLink', {}) ?? '發送重設連結',
      'auth.resetLinkSent' => TranslationOverrides.string(_root.$meta, 'auth.resetLinkSent', {}) ?? '重設連結已發送',
      'auth.required' => TranslationOverrides.string(_root.$meta, 'auth.required', {}) ?? '必填',
      'auth.enterUsername' => TranslationOverrides.string(_root.$meta, 'auth.enterUsername', {}) ?? '請輸入使用者名稱',
      'auth.enterPassword' => TranslationOverrides.string(_root.$meta, 'auth.enterPassword', {}) ?? '請輸入密碼',
      'auth.enterUsernameHint' =>
        TranslationOverrides.string(_root.$meta, 'auth.enterUsernameHint', {}) ?? '請輸入使用者名稱或手機號碼',
      'auth.passwordLoginTab' => TranslationOverrides.string(_root.$meta, 'auth.passwordLoginTab', {}) ?? '密碼登入',
      'auth.codeLoginTab' => TranslationOverrides.string(_root.$meta, 'auth.codeLoginTab', {}) ?? '驗證碼登入',
      'auth.phoneNumber' => TranslationOverrides.string(_root.$meta, 'auth.phoneNumber', {}) ?? '手機號碼',
      'auth.enterPhoneNumber' => TranslationOverrides.string(_root.$meta, 'auth.enterPhoneNumber', {}) ?? '請輸入手機號碼',
      'auth.phoneInvalid' => TranslationOverrides.string(_root.$meta, 'auth.phoneInvalid', {}) ?? '手機號碼格式不正確',
      'auth.getVerificationCode' => TranslationOverrides.string(_root.$meta, 'auth.getVerificationCode', {}) ?? '取得驗證碼',
      'auth.retryInSeconds' =>
        ({required Object seconds}) =>
            TranslationOverrides.string(_root.$meta, 'auth.retryInSeconds', {'seconds': seconds}) ?? '${seconds}s 後重試',
      'auth.otherLoginMethods' => TranslationOverrides.string(_root.$meta, 'auth.otherLoginMethods', {}) ?? '其他登入方式',
      'auth.enterNickname' => TranslationOverrides.string(_root.$meta, 'auth.enterNickname', {}) ?? '請輸入暱稱',
      'auth.passwordMinLength' =>
        ({required Object length}) =>
            TranslationOverrides.string(_root.$meta, 'auth.passwordMinLength', {'length': length}) ??
            '密碼長度不能少於${length}位',
      'auth.dontHaveAccount' => TranslationOverrides.string(_root.$meta, 'auth.dontHaveAccount', {}) ?? '還沒有帳號？',
      'auth.resetPasswordHint' =>
        TranslationOverrides.string(_root.$meta, 'auth.resetPasswordHint', {}) ?? '請輸入您的使用者名稱或電子郵件來重設密碼',
      'auth.usernameOrEmail' => TranslationOverrides.string(_root.$meta, 'auth.usernameOrEmail', {}) ?? '使用者名稱 / 電子郵件',
      'auth.slogan' => TranslationOverrides.string(_root.$meta, 'auth.slogan', {}) ?? '便捷購買，美味隨行',
      'auth.email' => TranslationOverrides.string(_root.$meta, 'auth.email', {}) ?? '電子郵件',
      'auth.enterEmail' => TranslationOverrides.string(_root.$meta, 'auth.enterEmail', {}) ?? '請輸入電子郵件',
      'auth.emailInvalid' => TranslationOverrides.string(_root.$meta, 'auth.emailInvalid', {}) ?? '電子郵件格式不正確',
      'auth.oldPassword' => TranslationOverrides.string(_root.$meta, 'auth.oldPassword', {}) ?? '舊密碼',
      'auth.enterOldPassword' => TranslationOverrides.string(_root.$meta, 'auth.enterOldPassword', {}) ?? '請輸入舊密碼',
      'auth.newPassword' => TranslationOverrides.string(_root.$meta, 'auth.newPassword', {}) ?? '新密碼',
      'auth.enterNewPassword' => TranslationOverrides.string(_root.$meta, 'auth.enterNewPassword', {}) ?? '請輸入新密碼',
      'auth.resetPasswordButton' => TranslationOverrides.string(_root.$meta, 'auth.resetPasswordButton', {}) ?? '重設密碼',
      'auth.resetPasswordSuccess' =>
        TranslationOverrides.string(_root.$meta, 'auth.resetPasswordSuccess', {}) ?? '密碼重設成功',
      'auth.resetPasswordFailed' =>
        TranslationOverrides.string(_root.$meta, 'auth.resetPasswordFailed', {}) ?? '密碼重設失敗',
      'auth.confirmPassword' => TranslationOverrides.string(_root.$meta, 'auth.confirmPassword', {}) ?? '確認密碼',
      'auth.enterConfirmPassword' =>
        TranslationOverrides.string(_root.$meta, 'auth.enterConfirmPassword', {}) ?? '請再次輸入密碼',
      'auth.passwordNotMatch' => TranslationOverrides.string(_root.$meta, 'auth.passwordNotMatch', {}) ?? '兩次輸入的密碼不一致',
      'common.login' => TranslationOverrides.string(_root.$meta, 'common.login', {}) ?? '登入',
      'common.register' => TranslationOverrides.string(_root.$meta, 'common.register', {}) ?? '註冊',
      'common.username' => TranslationOverrides.string(_root.$meta, 'common.username', {}) ?? '使用者名稱',
      'common.password' => TranslationOverrides.string(_root.$meta, 'common.password', {}) ?? '密碼',
      'common.confirm' => TranslationOverrides.string(_root.$meta, 'common.confirm', {}) ?? '確認',
      'common.cancel' => TranslationOverrides.string(_root.$meta, 'common.cancel', {}) ?? '取消',
      'common.error' => TranslationOverrides.string(_root.$meta, 'common.error', {}) ?? '錯誤',
      'common.success' => TranslationOverrides.string(_root.$meta, 'common.success', {}) ?? '成功',
      'common.loading' => TranslationOverrides.string(_root.$meta, 'common.loading', {}) ?? '載入中...',
      'common.ok' => TranslationOverrides.string(_root.$meta, 'common.ok', {}) ?? '確定',
      'common.save' => TranslationOverrides.string(_root.$meta, 'common.save', {}) ?? '儲存',
      'common.delete' => TranslationOverrides.string(_root.$meta, 'common.delete', {}) ?? '刪除',
      'common.edit' => TranslationOverrides.string(_root.$meta, 'common.edit', {}) ?? '編輯',
      'common.search' => TranslationOverrides.string(_root.$meta, 'common.search', {}) ?? '搜尋',
      'common.noData' => TranslationOverrides.string(_root.$meta, 'common.noData', {}) ?? '暫無數據',
      'common.retry' => TranslationOverrides.string(_root.$meta, 'common.retry', {}) ?? '重試',
      'common.skip' => TranslationOverrides.string(_root.$meta, 'common.skip', {}) ?? '跳過',
      'common.refresh' => TranslationOverrides.string(_root.$meta, 'common.refresh', {}) ?? '重新整理',
      'common.loadFailed' => TranslationOverrides.string(_root.$meta, 'common.loadFailed', {}) ?? '載入失敗',
      'common.unknownError' => TranslationOverrides.string(_root.$meta, 'common.unknownError', {}) ?? '未知錯誤',
      'common.info' => TranslationOverrides.string(_root.$meta, 'common.info', {}) ?? '提示',
      'common.developing' => TranslationOverrides.string(_root.$meta, 'common.developing', {}) ?? '頁面正在开发中',
      'common.appName' => TranslationOverrides.string(_root.$meta, 'common.appName', {}) ?? '好小乖',
      'common.logout' => TranslationOverrides.string(_root.$meta, 'common.logout', {}) ?? '登出',
      'common.pullToRefresh' => TranslationOverrides.string(_root.$meta, 'common.pullToRefresh', {}) ?? '下拉重新整理',
      'common.releaseToRefresh' => TranslationOverrides.string(_root.$meta, 'common.releaseToRefresh', {}) ?? '釋放重新整理',
      'common.refreshing' => TranslationOverrides.string(_root.$meta, 'common.refreshing', {}) ?? '正在重新整理...',
      'common.noMoreData' => TranslationOverrides.string(_root.$meta, 'common.noMoreData', {}) ?? '- 已經到底啦 -',
      'common.price' =>
        ({required Object price}) =>
            TranslationOverrides.string(_root.$meta, 'common.price', {'price': price}) ?? '¥${price}',
      'common.networkError' =>
        ({required Object message}) =>
            TranslationOverrides.string(_root.$meta, 'common.networkError', {'message': message}) ?? '網路錯誤：${message}',
      'common.networkErrorWithCode' =>
        ({required Object statusCode, required Object message}) =>
            TranslationOverrides.string(_root.$meta, 'common.networkErrorWithCode', {
              'statusCode': statusCode,
              'message': message,
            }) ??
            '網路錯誤 (${statusCode})：${message}',
      'common.serverError' =>
        ({required Object statusCode, required Object message}) =>
            TranslationOverrides.string(_root.$meta, 'common.serverError', {
              'statusCode': statusCode,
              'message': message,
            }) ??
            '伺服器錯誤 (${statusCode})：${message}',
      'common.cacheError' =>
        ({required Object message}) =>
            TranslationOverrides.string(_root.$meta, 'common.cacheError', {'message': message}) ?? '快取錯誤：${message}',
      'common.notFound' =>
        ({required Object resource}) =>
            TranslationOverrides.string(_root.$meta, 'common.notFound', {'resource': resource}) ?? '未找到：${resource}',
      'common.unauthorized' => TranslationOverrides.string(_root.$meta, 'common.unauthorized', {}) ?? '未授權，請重新登入',
      'common.validationError' =>
        ({required Object message}) =>
            TranslationOverrides.string(_root.$meta, 'common.validationError', {'message': message}) ??
            '驗證錯誤：${message}',
      'common.validationErrorWithDetails' =>
        ({required Object message, required Object errors}) =>
            TranslationOverrides.string(_root.$meta, 'common.validationErrorWithDetails', {
              'message': message,
              'errors': errors,
            }) ??
            '驗證錯誤：${message} (${errors})',
      'common.warning' => TranslationOverrides.string(_root.$meta, 'common.warning', {}) ?? '警告',
      'navigation.home' => TranslationOverrides.string(_root.$meta, 'navigation.home', {}) ?? '首頁',
      'navigation.device' => TranslationOverrides.string(_root.$meta, 'navigation.device', {}) ?? '設備',
      'navigation.orders' => TranslationOverrides.string(_root.$meta, 'navigation.orders', {}) ?? '訂單',
      'navigation.profile' => TranslationOverrides.string(_root.$meta, 'navigation.profile', {}) ?? '我的',
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
      'splash.starting' => TranslationOverrides.string(_root.$meta, 'splash.starting', {}) ?? '正在啟動...',
      'splash.checkingServices' =>
        TranslationOverrides.string(_root.$meta, 'splash.checkingServices', {}) ?? '檢查服務狀態...',
      'splash.loadingConfig' => TranslationOverrides.string(_root.$meta, 'splash.loadingConfig', {}) ?? '載入配置...',
      'splash.checkingAuth' => TranslationOverrides.string(_root.$meta, 'splash.checkingAuth', {}) ?? '檢查登入狀態...',
      'splash.preparingData' => TranslationOverrides.string(_root.$meta, 'splash.preparingData', {}) ?? '準備數據...',
      'splash.ready' => TranslationOverrides.string(_root.$meta, 'splash.ready', {}) ?? '啟動完成',
      'splash.failed' => TranslationOverrides.string(_root.$meta, 'splash.failed', {}) ?? '啟動失敗',
      'time.justNow' => TranslationOverrides.string(_root.$meta, 'time.justNow', {}) ?? '剛剛',
      'time.minutesAgo' =>
        ({required Object minutes}) =>
            TranslationOverrides.string(_root.$meta, 'time.minutesAgo', {'minutes': minutes}) ?? '${minutes} 分鐘前',
      'time.hoursAgo' =>
        ({required Object hours}) =>
            TranslationOverrides.string(_root.$meta, 'time.hoursAgo', {'hours': hours}) ?? '${hours} 小時前',
      'time.daysAgo' =>
        ({required Object days}) =>
            TranslationOverrides.string(_root.$meta, 'time.daysAgo', {'days': days}) ?? '${days} 天前',
      _ => null,
    };
  }
}
