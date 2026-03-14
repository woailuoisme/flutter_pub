///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'translations.g.dart';

// Path: <root>
typedef TranslationsZhCn = Translations; // ignore: unused_element

class Translations with BaseTranslations<AppLocale, Translations> {
  /// Returns the current translations of the given [context].
  ///
  /// Usage:
  /// final t = Translations.of(context);
  static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  /// [AppLocaleUtils.buildWithOverrides] is recommended for overriding.
  Translations({
    Map<String, Node>? overrides,
    PluralResolver? cardinalResolver,
    PluralResolver? ordinalResolver,
    TranslationMetadata<AppLocale, Translations>? meta,
  }) : $meta =
           meta ??
           TranslationMetadata(
             locale: AppLocale.zhCn,
             overrides: overrides ?? {},
             cardinalResolver: cardinalResolver,
             ordinalResolver: ordinalResolver,
           ) {
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <zh-CN>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Access flat map
  dynamic operator [](String key) => $meta.getTranslation(key);

  late final Translations _root = this; // ignore: unused_field

  Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) =>
      Translations(meta: meta ?? this.$meta);

  // Translations
  late final TranslationsAuthZhCn auth = TranslationsAuthZhCn.internal(_root);
  late final TranslationsCommonZhCn common = TranslationsCommonZhCn.internal(_root);
  late final TranslationsNavigationZhCn navigation = TranslationsNavigationZhCn.internal(_root);
  late final TranslationsNetworkZhCn network = TranslationsNetworkZhCn.internal(_root);
  late final TranslationsSplashZhCn splash = TranslationsSplashZhCn.internal(_root);
  late final TranslationsTimeZhCn time = TranslationsTimeZhCn.internal(_root);
}

// Path: auth
class TranslationsAuthZhCn {
  TranslationsAuthZhCn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// zh-CN: '欢迎回来'
  String get loginTitle => TranslationOverrides.string(_root.$meta, 'auth.loginTitle', {}) ?? '欢迎回来';

  /// zh-CN: '登录'
  String get loginButton => TranslationOverrides.string(_root.$meta, 'auth.loginButton', {}) ?? '登录';

  /// zh-CN: '注册'
  String get registerButton => TranslationOverrides.string(_root.$meta, 'auth.registerButton', {}) ?? '注册';

  /// zh-CN: '忘记密码？'
  String get forgotPassword => TranslationOverrides.string(_root.$meta, 'auth.forgotPassword', {}) ?? '忘记密码？';

  /// zh-CN: '登录失败'
  String get loginFailed => TranslationOverrides.string(_root.$meta, 'auth.loginFailed', {}) ?? '登录失败';

  /// zh-CN: '登录成功'
  String get loginSuccess => TranslationOverrides.string(_root.$meta, 'auth.loginSuccess', {}) ?? '登录成功';

  /// zh-CN: '创建账号'
  String get registerTitle => TranslationOverrides.string(_root.$meta, 'auth.registerTitle', {}) ?? '创建账号';

  /// zh-CN: '昵称'
  String get nickname => TranslationOverrides.string(_root.$meta, 'auth.nickname', {}) ?? '昵称';

  /// zh-CN: '注册成功'
  String get registerSuccess => TranslationOverrides.string(_root.$meta, 'auth.registerSuccess', {}) ?? '注册成功';

  /// zh-CN: '注册失败'
  String get registerFailed => TranslationOverrides.string(_root.$meta, 'auth.registerFailed', {}) ?? '注册失败';

  /// zh-CN: '重置密码'
  String get forgotPasswordTitle => TranslationOverrides.string(_root.$meta, 'auth.forgotPasswordTitle', {}) ?? '重置密码';

  /// zh-CN: '发送重置链接'
  String get sendResetLink => TranslationOverrides.string(_root.$meta, 'auth.sendResetLink', {}) ?? '发送重置链接';

  /// zh-CN: '重置链接已发送'
  String get resetLinkSent => TranslationOverrides.string(_root.$meta, 'auth.resetLinkSent', {}) ?? '重置链接已发送';

  /// zh-CN: '必填'
  String get required => TranslationOverrides.string(_root.$meta, 'auth.required', {}) ?? '必填';

  /// zh-CN: '请输入用户名'
  String get enterUsername => TranslationOverrides.string(_root.$meta, 'auth.enterUsername', {}) ?? '请输入用户名';

  /// zh-CN: '请输入密码'
  String get enterPassword => TranslationOverrides.string(_root.$meta, 'auth.enterPassword', {}) ?? '请输入密码';

  /// zh-CN: '请输入用户名或手机号'
  String get enterUsernameHint =>
      TranslationOverrides.string(_root.$meta, 'auth.enterUsernameHint', {}) ?? '请输入用户名或手机号';

  /// zh-CN: '密码登录'
  String get passwordLoginTab => TranslationOverrides.string(_root.$meta, 'auth.passwordLoginTab', {}) ?? '密码登录';

  /// zh-CN: '验证码登录'
  String get codeLoginTab => TranslationOverrides.string(_root.$meta, 'auth.codeLoginTab', {}) ?? '验证码登录';

  /// zh-CN: '手机号'
  String get phoneNumber => TranslationOverrides.string(_root.$meta, 'auth.phoneNumber', {}) ?? '手机号';

  /// zh-CN: '请输入手机号'
  String get enterPhoneNumber => TranslationOverrides.string(_root.$meta, 'auth.enterPhoneNumber', {}) ?? '请输入手机号';

  /// zh-CN: '手机号格式不正确'
  String get phoneInvalid => TranslationOverrides.string(_root.$meta, 'auth.phoneInvalid', {}) ?? '手机号格式不正确';

  /// zh-CN: '获取验证码'
  String get getVerificationCode => TranslationOverrides.string(_root.$meta, 'auth.getVerificationCode', {}) ?? '获取验证码';

  /// zh-CN: '${seconds}s 后重试'
  String retryInSeconds({required Object seconds}) =>
      TranslationOverrides.string(_root.$meta, 'auth.retryInSeconds', {'seconds': seconds}) ?? '${seconds}s 后重试';

  /// zh-CN: '其他登录方式'
  String get otherLoginMethods => TranslationOverrides.string(_root.$meta, 'auth.otherLoginMethods', {}) ?? '其他登录方式';

  /// zh-CN: '请输入昵称'
  String get enterNickname => TranslationOverrides.string(_root.$meta, 'auth.enterNickname', {}) ?? '请输入昵称';

  /// zh-CN: '密码长度不能少于${length}位'
  String passwordMinLength({required Object length}) =>
      TranslationOverrides.string(_root.$meta, 'auth.passwordMinLength', {'length': length}) ?? '密码长度不能少于${length}位';

  /// zh-CN: '还没有账号？'
  String get dontHaveAccount => TranslationOverrides.string(_root.$meta, 'auth.dontHaveAccount', {}) ?? '还没有账号？';

  /// zh-CN: '请输入您的用户名或邮箱来重置密码'
  String get resetPasswordHint =>
      TranslationOverrides.string(_root.$meta, 'auth.resetPasswordHint', {}) ?? '请输入您的用户名或邮箱来重置密码';

  /// zh-CN: '用户名 / 邮箱'
  String get usernameOrEmail => TranslationOverrides.string(_root.$meta, 'auth.usernameOrEmail', {}) ?? '用户名 / 邮箱';

  /// zh-CN: '便捷购买，美味随行'
  String get slogan => TranslationOverrides.string(_root.$meta, 'auth.slogan', {}) ?? '便捷购买，美味随行';

  /// zh-CN: '重新发送'
  String get resendCode => TranslationOverrides.string(_root.$meta, 'auth.resendCode', {}) ?? '重新发送';

  /// zh-CN: '邮箱'
  String get email => TranslationOverrides.string(_root.$meta, 'auth.email', {}) ?? '邮箱';

  /// zh-CN: '请输入邮箱'
  String get enterEmail => TranslationOverrides.string(_root.$meta, 'auth.enterEmail', {}) ?? '请输入邮箱';

  /// zh-CN: '邮箱格式不正确'
  String get emailInvalid => TranslationOverrides.string(_root.$meta, 'auth.emailInvalid', {}) ?? '邮箱格式不正确';

  /// zh-CN: '旧密码'
  String get oldPassword => TranslationOverrides.string(_root.$meta, 'auth.oldPassword', {}) ?? '旧密码';

  /// zh-CN: '请输入旧密码'
  String get enterOldPassword => TranslationOverrides.string(_root.$meta, 'auth.enterOldPassword', {}) ?? '请输入旧密码';

  /// zh-CN: '新密码'
  String get newPassword => TranslationOverrides.string(_root.$meta, 'auth.newPassword', {}) ?? '新密码';

  /// zh-CN: '请输入新密码'
  String get enterNewPassword => TranslationOverrides.string(_root.$meta, 'auth.enterNewPassword', {}) ?? '请输入新密码';

  /// zh-CN: '重置密码'
  String get resetPasswordButton => TranslationOverrides.string(_root.$meta, 'auth.resetPasswordButton', {}) ?? '重置密码';

  /// zh-CN: '密码重置成功'
  String get resetPasswordSuccess =>
      TranslationOverrides.string(_root.$meta, 'auth.resetPasswordSuccess', {}) ?? '密码重置成功';

  /// zh-CN: '密码重置失败'
  String get resetPasswordFailed =>
      TranslationOverrides.string(_root.$meta, 'auth.resetPasswordFailed', {}) ?? '密码重置失败';

  /// zh-CN: '确认密码'
  String get confirmPassword => TranslationOverrides.string(_root.$meta, 'auth.confirmPassword', {}) ?? '确认密码';

  /// zh-CN: '请再次输入密码'
  String get enterConfirmPassword =>
      TranslationOverrides.string(_root.$meta, 'auth.enterConfirmPassword', {}) ?? '请再次输入密码';

  /// zh-CN: '两次输入的密码不一致'
  String get passwordNotMatch => TranslationOverrides.string(_root.$meta, 'auth.passwordNotMatch', {}) ?? '两次输入的密码不一致';
}

// Path: common
class TranslationsCommonZhCn {
  TranslationsCommonZhCn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// zh-CN: '登录'
  String get login => TranslationOverrides.string(_root.$meta, 'common.login', {}) ?? '登录';

  /// zh-CN: '注册'
  String get register => TranslationOverrides.string(_root.$meta, 'common.register', {}) ?? '注册';

  /// zh-CN: '用户名'
  String get username => TranslationOverrides.string(_root.$meta, 'common.username', {}) ?? '用户名';

  /// zh-CN: '密码'
  String get password => TranslationOverrides.string(_root.$meta, 'common.password', {}) ?? '密码';

  /// zh-CN: '确认'
  String get confirm => TranslationOverrides.string(_root.$meta, 'common.confirm', {}) ?? '确认';

  /// zh-CN: '取消'
  String get cancel => TranslationOverrides.string(_root.$meta, 'common.cancel', {}) ?? '取消';

  /// zh-CN: '错误'
  String get error => TranslationOverrides.string(_root.$meta, 'common.error', {}) ?? '错误';

  /// zh-CN: '成功'
  String get success => TranslationOverrides.string(_root.$meta, 'common.success', {}) ?? '成功';

  /// zh-CN: '加载中...'
  String get loading => TranslationOverrides.string(_root.$meta, 'common.loading', {}) ?? '加载中...';

  /// zh-CN: '确定'
  String get ok => TranslationOverrides.string(_root.$meta, 'common.ok', {}) ?? '确定';

  /// zh-CN: '保存'
  String get save => TranslationOverrides.string(_root.$meta, 'common.save', {}) ?? '保存';

  /// zh-CN: '删除'
  String get delete => TranslationOverrides.string(_root.$meta, 'common.delete', {}) ?? '删除';

  /// zh-CN: '编辑'
  String get edit => TranslationOverrides.string(_root.$meta, 'common.edit', {}) ?? '编辑';

  /// zh-CN: '搜索'
  String get search => TranslationOverrides.string(_root.$meta, 'common.search', {}) ?? '搜索';

  /// zh-CN: '暂无数据'
  String get noData => TranslationOverrides.string(_root.$meta, 'common.noData', {}) ?? '暂无数据';

  /// zh-CN: '重试'
  String get retry => TranslationOverrides.string(_root.$meta, 'common.retry', {}) ?? '重试';

  /// zh-CN: '跳过'
  String get skip => TranslationOverrides.string(_root.$meta, 'common.skip', {}) ?? '跳过';

  /// zh-CN: '刷新'
  String get refresh => TranslationOverrides.string(_root.$meta, 'common.refresh', {}) ?? '刷新';

  /// zh-CN: '加载失败'
  String get loadFailed => TranslationOverrides.string(_root.$meta, 'common.loadFailed', {}) ?? '加载失败';

  /// zh-CN: '未知错误'
  String get unknownError => TranslationOverrides.string(_root.$meta, 'common.unknownError', {}) ?? '未知错误';

  /// zh-CN: '提示'
  String get info => TranslationOverrides.string(_root.$meta, 'common.info', {}) ?? '提示';

  /// zh-CN: '页面正在开发中'
  String get developing => TranslationOverrides.string(_root.$meta, 'common.developing', {}) ?? '页面正在开发中';

  /// zh-CN: '好小乖'
  String get appName => TranslationOverrides.string(_root.$meta, 'common.appName', {}) ?? '好小乖';

  /// zh-CN: '退出'
  String get logout => TranslationOverrides.string(_root.$meta, 'common.logout', {}) ?? '退出';

  /// zh-CN: '下拉刷新'
  String get pullToRefresh => TranslationOverrides.string(_root.$meta, 'common.pullToRefresh', {}) ?? '下拉刷新';

  /// zh-CN: '释放刷新'
  String get releaseToRefresh => TranslationOverrides.string(_root.$meta, 'common.releaseToRefresh', {}) ?? '释放刷新';

  /// zh-CN: '正在刷新...'
  String get refreshing => TranslationOverrides.string(_root.$meta, 'common.refreshing', {}) ?? '正在刷新...';

  /// zh-CN: '- 已经到底啦 -'
  String get noMoreData => TranslationOverrides.string(_root.$meta, 'common.noMoreData', {}) ?? '- 已经到底啦 -';

  /// zh-CN: '¥${price}'
  String price({required Object price}) =>
      TranslationOverrides.string(_root.$meta, 'common.price', {'price': price}) ?? '¥${price}';

  /// zh-CN: '网络错误：${message}'
  String networkError({required Object message}) =>
      TranslationOverrides.string(_root.$meta, 'common.networkError', {'message': message}) ?? '网络错误：${message}';

  /// zh-CN: '网络错误 (${statusCode})：${message}'
  String networkErrorWithCode({required Object statusCode, required Object message}) =>
      TranslationOverrides.string(_root.$meta, 'common.networkErrorWithCode', {
        'statusCode': statusCode,
        'message': message,
      }) ??
      '网络错误 (${statusCode})：${message}';

  /// zh-CN: '服务器错误 (${statusCode})：${message}'
  String serverError({required Object statusCode, required Object message}) =>
      TranslationOverrides.string(_root.$meta, 'common.serverError', {'statusCode': statusCode, 'message': message}) ??
      '服务器错误 (${statusCode})：${message}';

  /// zh-CN: '缓存错误：${message}'
  String cacheError({required Object message}) =>
      TranslationOverrides.string(_root.$meta, 'common.cacheError', {'message': message}) ?? '缓存错误：${message}';

  /// zh-CN: '未找到：${resource}'
  String notFound({required Object resource}) =>
      TranslationOverrides.string(_root.$meta, 'common.notFound', {'resource': resource}) ?? '未找到：${resource}';

  /// zh-CN: '未授权，请重新登录'
  String get unauthorized => TranslationOverrides.string(_root.$meta, 'common.unauthorized', {}) ?? '未授权，请重新登录';

  /// zh-CN: '验证错误：${message}'
  String validationError({required Object message}) =>
      TranslationOverrides.string(_root.$meta, 'common.validationError', {'message': message}) ?? '验证错误：${message}';

  /// zh-CN: '验证错误：${message} (${errors})'
  String validationErrorWithDetails({required Object message, required Object errors}) =>
      TranslationOverrides.string(_root.$meta, 'common.validationErrorWithDetails', {
        'message': message,
        'errors': errors,
      }) ??
      '验证错误：${message} (${errors})';

  /// zh-CN: '全选'
  String get selectAll => TranslationOverrides.string(_root.$meta, 'common.selectAll', {}) ?? '全选';

  /// zh-CN: '取消全选'
  String get deselectAll => TranslationOverrides.string(_root.$meta, 'common.deselectAll', {}) ?? '取消全选';

  /// zh-CN: '警告'
  String get warning => TranslationOverrides.string(_root.$meta, 'common.warning', {}) ?? '警告';
}

// Path: navigation
class TranslationsNavigationZhCn {
  TranslationsNavigationZhCn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// zh-CN: '首页'
  String get home => TranslationOverrides.string(_root.$meta, 'navigation.home', {}) ?? '首页';

  /// zh-CN: '设备'
  String get device => TranslationOverrides.string(_root.$meta, 'navigation.device', {}) ?? '设备';

  /// zh-CN: '订单'
  String get orders => TranslationOverrides.string(_root.$meta, 'navigation.orders', {}) ?? '订单';

  /// zh-CN: '我的'
  String get profile => TranslationOverrides.string(_root.$meta, 'navigation.profile', {}) ?? '我的';
}

// Path: network
class TranslationsNetworkZhCn {
  TranslationsNetworkZhCn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final TranslationsNetworkErrorsZhCn errors = TranslationsNetworkErrorsZhCn.internal(_root);
}

// Path: splash
class TranslationsSplashZhCn {
  TranslationsSplashZhCn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// zh-CN: '正在启动...'
  String get starting => TranslationOverrides.string(_root.$meta, 'splash.starting', {}) ?? '正在启动...';

  /// zh-CN: '检查服务状态...'
  String get checkingServices => TranslationOverrides.string(_root.$meta, 'splash.checkingServices', {}) ?? '检查服务状态...';

  /// zh-CN: '加载配置...'
  String get loadingConfig => TranslationOverrides.string(_root.$meta, 'splash.loadingConfig', {}) ?? '加载配置...';

  /// zh-CN: '检查登录状态...'
  String get checkingAuth => TranslationOverrides.string(_root.$meta, 'splash.checkingAuth', {}) ?? '检查登录状态...';

  /// zh-CN: '准备数据...'
  String get preparingData => TranslationOverrides.string(_root.$meta, 'splash.preparingData', {}) ?? '准备数据...';

  /// zh-CN: '启动完成'
  String get ready => TranslationOverrides.string(_root.$meta, 'splash.ready', {}) ?? '启动完成';

  /// zh-CN: '启动失败'
  String get failed => TranslationOverrides.string(_root.$meta, 'splash.failed', {}) ?? '启动失败';
}

// Path: time
class TranslationsTimeZhCn {
  TranslationsTimeZhCn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// zh-CN: '刚刚'
  String get justNow => TranslationOverrides.string(_root.$meta, 'time.justNow', {}) ?? '刚刚';

  /// zh-CN: '${minutes} 分钟前'
  String minutesAgo({required Object minutes}) =>
      TranslationOverrides.string(_root.$meta, 'time.minutesAgo', {'minutes': minutes}) ?? '${minutes} 分钟前';

  /// zh-CN: '${hours} 小时前'
  String hoursAgo({required Object hours}) =>
      TranslationOverrides.string(_root.$meta, 'time.hoursAgo', {'hours': hours}) ?? '${hours} 小时前';

  /// zh-CN: '${days} 天前'
  String daysAgo({required Object days}) =>
      TranslationOverrides.string(_root.$meta, 'time.daysAgo', {'days': days}) ?? '${days} 天前';
}

// Path: network.errors
class TranslationsNetworkErrorsZhCn {
  TranslationsNetworkErrorsZhCn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// zh-CN: '网络连接失败，请检查您的网络设置'
  String get connectionError =>
      TranslationOverrides.string(_root.$meta, 'network.errors.connectionError', {}) ?? '网络连接失败，请检查您的网络设置';

  /// zh-CN: '请求失败，请稍后重试'
  String get failed => TranslationOverrides.string(_root.$meta, 'network.errors.failed', {}) ?? '请求失败，请稍后重试';

  /// zh-CN: '登录凭证已过期，请重新登录'
  String get unauthorized =>
      TranslationOverrides.string(_root.$meta, 'network.errors.unauthorized', {}) ?? '登录凭证已过期，请重新登录';

  /// zh-CN: '网络连接超时，请检查您的网络'
  String get connectionTimeout =>
      TranslationOverrides.string(_root.$meta, 'network.errors.connectionTimeout', {}) ?? '网络连接超时，请检查您的网络';

  /// zh-CN: '请求数据发送超时'
  String get sendTimeout => TranslationOverrides.string(_root.$meta, 'network.errors.sendTimeout', {}) ?? '请求数据发送超时';

  /// zh-CN: '响应数据接收超时'
  String get receiveTimeout =>
      TranslationOverrides.string(_root.$meta, 'network.errors.receiveTimeout', {}) ?? '响应数据接收超时';

  /// zh-CN: '网络证书验证失败'
  String get badCertificate =>
      TranslationOverrides.string(_root.$meta, 'network.errors.badCertificate', {}) ?? '网络证书验证失败';

  /// zh-CN: '请求已取消'
  String get cancel => TranslationOverrides.string(_root.$meta, 'network.errors.cancel', {}) ?? '请求已取消';

  /// zh-CN: '网络请求异常: ${error}'
  String unknown({required Object error}) =>
      TranslationOverrides.string(_root.$meta, 'network.errors.unknown', {'error': error}) ?? '网络请求异常: ${error}';

  /// zh-CN: '请稍后重试'
  String get retryLater => TranslationOverrides.string(_root.$meta, 'network.errors.retryLater', {}) ?? '请稍后重试';

  /// zh-CN: '错误的请求'
  String get badRequest => TranslationOverrides.string(_root.$meta, 'network.errors.badRequest', {}) ?? '错误的请求';

  /// zh-CN: '拒绝访问'
  String get forbidden => TranslationOverrides.string(_root.$meta, 'network.errors.forbidden', {}) ?? '拒绝访问';

  /// zh-CN: '请求的资源不存在'
  String get notFound => TranslationOverrides.string(_root.$meta, 'network.errors.notFound', {}) ?? '请求的资源不存在';

  /// zh-CN: '请求超时'
  String get timeout => TranslationOverrides.string(_root.$meta, 'network.errors.timeout', {}) ?? '请求超时';

  /// zh-CN: '服务器状态冲突'
  String get conflict => TranslationOverrides.string(_root.$meta, 'network.errors.conflict', {}) ?? '服务器状态冲突';

  /// zh-CN: '数据验证失败'
  String get validationFailed =>
      TranslationOverrides.string(_root.$meta, 'network.errors.validationFailed', {}) ?? '数据验证失败';

  /// zh-CN: '请求过于频繁，请稍后再试'
  String get tooManyRequests =>
      TranslationOverrides.string(_root.$meta, 'network.errors.tooManyRequests', {}) ?? '请求过于频繁，请稍后再试';

  /// zh-CN: '服务器内部错误'
  String get internalServerError =>
      TranslationOverrides.string(_root.$meta, 'network.errors.internalServerError', {}) ?? '服务器内部错误';

  /// zh-CN: '网关错误'
  String get badGateway => TranslationOverrides.string(_root.$meta, 'network.errors.badGateway', {}) ?? '网关错误';

  /// zh-CN: '服务不可用'
  String get serviceUnavailable =>
      TranslationOverrides.string(_root.$meta, 'network.errors.serviceUnavailable', {}) ?? '服务不可用';

  /// zh-CN: '网关超时'
  String get gatewayTimeout => TranslationOverrides.string(_root.$meta, 'network.errors.gatewayTimeout', {}) ?? '网关超时';

  /// zh-CN: '服务器错误 (${code})'
  String serverError({required Object code}) =>
      TranslationOverrides.string(_root.$meta, 'network.errors.serverError', {'code': code}) ?? '服务器错误 (${code})';

  /// zh-CN: '请求错误 (${code})'
  String requestError({required Object code}) =>
      TranslationOverrides.string(_root.$meta, 'network.errors.requestError', {'code': code}) ?? '请求错误 (${code})';
}

/// The flat map containing all translations for locale <zh-CN>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on Translations {
  dynamic _flatMapFunction(String path) {
    return switch (path) {
      'auth.loginTitle' => TranslationOverrides.string(_root.$meta, 'auth.loginTitle', {}) ?? '欢迎回来',
      'auth.loginButton' => TranslationOverrides.string(_root.$meta, 'auth.loginButton', {}) ?? '登录',
      'auth.registerButton' => TranslationOverrides.string(_root.$meta, 'auth.registerButton', {}) ?? '注册',
      'auth.forgotPassword' => TranslationOverrides.string(_root.$meta, 'auth.forgotPassword', {}) ?? '忘记密码？',
      'auth.loginFailed' => TranslationOverrides.string(_root.$meta, 'auth.loginFailed', {}) ?? '登录失败',
      'auth.loginSuccess' => TranslationOverrides.string(_root.$meta, 'auth.loginSuccess', {}) ?? '登录成功',
      'auth.registerTitle' => TranslationOverrides.string(_root.$meta, 'auth.registerTitle', {}) ?? '创建账号',
      'auth.nickname' => TranslationOverrides.string(_root.$meta, 'auth.nickname', {}) ?? '昵称',
      'auth.registerSuccess' => TranslationOverrides.string(_root.$meta, 'auth.registerSuccess', {}) ?? '注册成功',
      'auth.registerFailed' => TranslationOverrides.string(_root.$meta, 'auth.registerFailed', {}) ?? '注册失败',
      'auth.forgotPasswordTitle' => TranslationOverrides.string(_root.$meta, 'auth.forgotPasswordTitle', {}) ?? '重置密码',
      'auth.sendResetLink' => TranslationOverrides.string(_root.$meta, 'auth.sendResetLink', {}) ?? '发送重置链接',
      'auth.resetLinkSent' => TranslationOverrides.string(_root.$meta, 'auth.resetLinkSent', {}) ?? '重置链接已发送',
      'auth.required' => TranslationOverrides.string(_root.$meta, 'auth.required', {}) ?? '必填',
      'auth.enterUsername' => TranslationOverrides.string(_root.$meta, 'auth.enterUsername', {}) ?? '请输入用户名',
      'auth.enterPassword' => TranslationOverrides.string(_root.$meta, 'auth.enterPassword', {}) ?? '请输入密码',
      'auth.enterUsernameHint' =>
        TranslationOverrides.string(_root.$meta, 'auth.enterUsernameHint', {}) ?? '请输入用户名或手机号',
      'auth.passwordLoginTab' => TranslationOverrides.string(_root.$meta, 'auth.passwordLoginTab', {}) ?? '密码登录',
      'auth.codeLoginTab' => TranslationOverrides.string(_root.$meta, 'auth.codeLoginTab', {}) ?? '验证码登录',
      'auth.phoneNumber' => TranslationOverrides.string(_root.$meta, 'auth.phoneNumber', {}) ?? '手机号',
      'auth.enterPhoneNumber' => TranslationOverrides.string(_root.$meta, 'auth.enterPhoneNumber', {}) ?? '请输入手机号',
      'auth.phoneInvalid' => TranslationOverrides.string(_root.$meta, 'auth.phoneInvalid', {}) ?? '手机号格式不正确',
      'auth.getVerificationCode' => TranslationOverrides.string(_root.$meta, 'auth.getVerificationCode', {}) ?? '获取验证码',
      'auth.retryInSeconds' =>
        ({required Object seconds}) =>
            TranslationOverrides.string(_root.$meta, 'auth.retryInSeconds', {'seconds': seconds}) ?? '${seconds}s 后重试',
      'auth.otherLoginMethods' => TranslationOverrides.string(_root.$meta, 'auth.otherLoginMethods', {}) ?? '其他登录方式',
      'auth.enterNickname' => TranslationOverrides.string(_root.$meta, 'auth.enterNickname', {}) ?? '请输入昵称',
      'auth.passwordMinLength' =>
        ({required Object length}) =>
            TranslationOverrides.string(_root.$meta, 'auth.passwordMinLength', {'length': length}) ??
            '密码长度不能少于${length}位',
      'auth.dontHaveAccount' => TranslationOverrides.string(_root.$meta, 'auth.dontHaveAccount', {}) ?? '还没有账号？',
      'auth.resetPasswordHint' =>
        TranslationOverrides.string(_root.$meta, 'auth.resetPasswordHint', {}) ?? '请输入您的用户名或邮箱来重置密码',
      'auth.usernameOrEmail' => TranslationOverrides.string(_root.$meta, 'auth.usernameOrEmail', {}) ?? '用户名 / 邮箱',
      'auth.slogan' => TranslationOverrides.string(_root.$meta, 'auth.slogan', {}) ?? '便捷购买，美味随行',
      'auth.resendCode' => TranslationOverrides.string(_root.$meta, 'auth.resendCode', {}) ?? '重新发送',
      'auth.email' => TranslationOverrides.string(_root.$meta, 'auth.email', {}) ?? '邮箱',
      'auth.enterEmail' => TranslationOverrides.string(_root.$meta, 'auth.enterEmail', {}) ?? '请输入邮箱',
      'auth.emailInvalid' => TranslationOverrides.string(_root.$meta, 'auth.emailInvalid', {}) ?? '邮箱格式不正确',
      'auth.oldPassword' => TranslationOverrides.string(_root.$meta, 'auth.oldPassword', {}) ?? '旧密码',
      'auth.enterOldPassword' => TranslationOverrides.string(_root.$meta, 'auth.enterOldPassword', {}) ?? '请输入旧密码',
      'auth.newPassword' => TranslationOverrides.string(_root.$meta, 'auth.newPassword', {}) ?? '新密码',
      'auth.enterNewPassword' => TranslationOverrides.string(_root.$meta, 'auth.enterNewPassword', {}) ?? '请输入新密码',
      'auth.resetPasswordButton' => TranslationOverrides.string(_root.$meta, 'auth.resetPasswordButton', {}) ?? '重置密码',
      'auth.resetPasswordSuccess' =>
        TranslationOverrides.string(_root.$meta, 'auth.resetPasswordSuccess', {}) ?? '密码重置成功',
      'auth.resetPasswordFailed' =>
        TranslationOverrides.string(_root.$meta, 'auth.resetPasswordFailed', {}) ?? '密码重置失败',
      'auth.confirmPassword' => TranslationOverrides.string(_root.$meta, 'auth.confirmPassword', {}) ?? '确认密码',
      'auth.enterConfirmPassword' =>
        TranslationOverrides.string(_root.$meta, 'auth.enterConfirmPassword', {}) ?? '请再次输入密码',
      'auth.passwordNotMatch' => TranslationOverrides.string(_root.$meta, 'auth.passwordNotMatch', {}) ?? '两次输入的密码不一致',
      'common.login' => TranslationOverrides.string(_root.$meta, 'common.login', {}) ?? '登录',
      'common.register' => TranslationOverrides.string(_root.$meta, 'common.register', {}) ?? '注册',
      'common.username' => TranslationOverrides.string(_root.$meta, 'common.username', {}) ?? '用户名',
      'common.password' => TranslationOverrides.string(_root.$meta, 'common.password', {}) ?? '密码',
      'common.confirm' => TranslationOverrides.string(_root.$meta, 'common.confirm', {}) ?? '确认',
      'common.cancel' => TranslationOverrides.string(_root.$meta, 'common.cancel', {}) ?? '取消',
      'common.error' => TranslationOverrides.string(_root.$meta, 'common.error', {}) ?? '错误',
      'common.success' => TranslationOverrides.string(_root.$meta, 'common.success', {}) ?? '成功',
      'common.loading' => TranslationOverrides.string(_root.$meta, 'common.loading', {}) ?? '加载中...',
      'common.ok' => TranslationOverrides.string(_root.$meta, 'common.ok', {}) ?? '确定',
      'common.save' => TranslationOverrides.string(_root.$meta, 'common.save', {}) ?? '保存',
      'common.delete' => TranslationOverrides.string(_root.$meta, 'common.delete', {}) ?? '删除',
      'common.edit' => TranslationOverrides.string(_root.$meta, 'common.edit', {}) ?? '编辑',
      'common.search' => TranslationOverrides.string(_root.$meta, 'common.search', {}) ?? '搜索',
      'common.noData' => TranslationOverrides.string(_root.$meta, 'common.noData', {}) ?? '暂无数据',
      'common.retry' => TranslationOverrides.string(_root.$meta, 'common.retry', {}) ?? '重试',
      'common.skip' => TranslationOverrides.string(_root.$meta, 'common.skip', {}) ?? '跳过',
      'common.refresh' => TranslationOverrides.string(_root.$meta, 'common.refresh', {}) ?? '刷新',
      'common.loadFailed' => TranslationOverrides.string(_root.$meta, 'common.loadFailed', {}) ?? '加载失败',
      'common.unknownError' => TranslationOverrides.string(_root.$meta, 'common.unknownError', {}) ?? '未知错误',
      'common.info' => TranslationOverrides.string(_root.$meta, 'common.info', {}) ?? '提示',
      'common.developing' => TranslationOverrides.string(_root.$meta, 'common.developing', {}) ?? '页面正在开发中',
      'common.appName' => TranslationOverrides.string(_root.$meta, 'common.appName', {}) ?? '好小乖',
      'common.logout' => TranslationOverrides.string(_root.$meta, 'common.logout', {}) ?? '退出',
      'common.pullToRefresh' => TranslationOverrides.string(_root.$meta, 'common.pullToRefresh', {}) ?? '下拉刷新',
      'common.releaseToRefresh' => TranslationOverrides.string(_root.$meta, 'common.releaseToRefresh', {}) ?? '释放刷新',
      'common.refreshing' => TranslationOverrides.string(_root.$meta, 'common.refreshing', {}) ?? '正在刷新...',
      'common.noMoreData' => TranslationOverrides.string(_root.$meta, 'common.noMoreData', {}) ?? '- 已经到底啦 -',
      'common.price' =>
        ({required Object price}) =>
            TranslationOverrides.string(_root.$meta, 'common.price', {'price': price}) ?? '¥${price}',
      'common.networkError' =>
        ({required Object message}) =>
            TranslationOverrides.string(_root.$meta, 'common.networkError', {'message': message}) ?? '网络错误：${message}',
      'common.networkErrorWithCode' =>
        ({required Object statusCode, required Object message}) =>
            TranslationOverrides.string(_root.$meta, 'common.networkErrorWithCode', {
              'statusCode': statusCode,
              'message': message,
            }) ??
            '网络错误 (${statusCode})：${message}',
      'common.serverError' =>
        ({required Object statusCode, required Object message}) =>
            TranslationOverrides.string(_root.$meta, 'common.serverError', {
              'statusCode': statusCode,
              'message': message,
            }) ??
            '服务器错误 (${statusCode})：${message}',
      'common.cacheError' =>
        ({required Object message}) =>
            TranslationOverrides.string(_root.$meta, 'common.cacheError', {'message': message}) ?? '缓存错误：${message}',
      'common.notFound' =>
        ({required Object resource}) =>
            TranslationOverrides.string(_root.$meta, 'common.notFound', {'resource': resource}) ?? '未找到：${resource}',
      'common.unauthorized' => TranslationOverrides.string(_root.$meta, 'common.unauthorized', {}) ?? '未授权，请重新登录',
      'common.validationError' =>
        ({required Object message}) =>
            TranslationOverrides.string(_root.$meta, 'common.validationError', {'message': message}) ??
            '验证错误：${message}',
      'common.validationErrorWithDetails' =>
        ({required Object message, required Object errors}) =>
            TranslationOverrides.string(_root.$meta, 'common.validationErrorWithDetails', {
              'message': message,
              'errors': errors,
            }) ??
            '验证错误：${message} (${errors})',
      'common.selectAll' => TranslationOverrides.string(_root.$meta, 'common.selectAll', {}) ?? '全选',
      'common.deselectAll' => TranslationOverrides.string(_root.$meta, 'common.deselectAll', {}) ?? '取消全选',
      'common.warning' => TranslationOverrides.string(_root.$meta, 'common.warning', {}) ?? '警告',
      'navigation.home' => TranslationOverrides.string(_root.$meta, 'navigation.home', {}) ?? '首页',
      'navigation.device' => TranslationOverrides.string(_root.$meta, 'navigation.device', {}) ?? '设备',
      'navigation.orders' => TranslationOverrides.string(_root.$meta, 'navigation.orders', {}) ?? '订单',
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
      'splash.starting' => TranslationOverrides.string(_root.$meta, 'splash.starting', {}) ?? '正在启动...',
      'splash.checkingServices' =>
        TranslationOverrides.string(_root.$meta, 'splash.checkingServices', {}) ?? '检查服务状态...',
      'splash.loadingConfig' => TranslationOverrides.string(_root.$meta, 'splash.loadingConfig', {}) ?? '加载配置...',
      'splash.checkingAuth' => TranslationOverrides.string(_root.$meta, 'splash.checkingAuth', {}) ?? '检查登录状态...',
      'splash.preparingData' => TranslationOverrides.string(_root.$meta, 'splash.preparingData', {}) ?? '准备数据...',
      'splash.ready' => TranslationOverrides.string(_root.$meta, 'splash.ready', {}) ?? '启动完成',
      'splash.failed' => TranslationOverrides.string(_root.$meta, 'splash.failed', {}) ?? '启动失败',
      'time.justNow' => TranslationOverrides.string(_root.$meta, 'time.justNow', {}) ?? '刚刚',
      'time.minutesAgo' =>
        ({required Object minutes}) =>
            TranslationOverrides.string(_root.$meta, 'time.minutesAgo', {'minutes': minutes}) ?? '${minutes} 分钟前',
      'time.hoursAgo' =>
        ({required Object hours}) =>
            TranslationOverrides.string(_root.$meta, 'time.hoursAgo', {'hours': hours}) ?? '${hours} 小时前',
      'time.daysAgo' =>
        ({required Object days}) =>
            TranslationOverrides.string(_root.$meta, 'time.daysAgo', {'days': days}) ?? '${days} 天前',
      _ => null,
    };
  }
}
