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
  late final TranslationsAboutZhCn about = TranslationsAboutZhCn.internal(_root);
  late final TranslationsAuthZhCn auth = TranslationsAuthZhCn.internal(_root);
  late final TranslationsCommonZhCn common = TranslationsCommonZhCn.internal(_root);
  late final TranslationsDeviceInfoZhCn device_info = TranslationsDeviceInfoZhCn.internal(_root);
  late final TranslationsFeedbackZhCn feedback = TranslationsFeedbackZhCn.internal(_root);
  late final TranslationsInventoryZhCn inventory = TranslationsInventoryZhCn.internal(_root);
  late final TranslationsMachinesZhCn machines = TranslationsMachinesZhCn.internal(_root);
  late final TranslationsMaintenanceZhCn maintenance = TranslationsMaintenanceZhCn.internal(_root);
  late final TranslationsNavigationZhCn navigation = TranslationsNavigationZhCn.internal(_root);
  late final TranslationsNetworkZhCn network = TranslationsNetworkZhCn.internal(_root);
  late final TranslationsNotificationsZhCn notifications = TranslationsNotificationsZhCn.internal(_root);
  late final TranslationsProfileZhCn profile = TranslationsProfileZhCn.internal(_root);
  late final TranslationsSettingsZhCn settings = TranslationsSettingsZhCn.internal(_root);
  late final TranslationsTimeZhCn time = TranslationsTimeZhCn.internal(_root);
  late final TranslationsWelcomeGiftZhCn welcome_gift = TranslationsWelcomeGiftZhCn.internal(_root);
}

// Path: about
class TranslationsAboutZhCn {
  TranslationsAboutZhCn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// zh-CN: '关于我们'
  String get title => TranslationOverrides.string(_root.$meta, 'about.title', {}) ?? '关于我们';

  /// zh-CN: '联系我们'
  String get contactTitle => TranslationOverrides.string(_root.$meta, 'about.contactTitle', {}) ?? '联系我们';

  /// zh-CN: '客服热线'
  String get customerServiceHotline =>
      TranslationOverrides.string(_root.$meta, 'about.customerServiceHotline', {}) ?? '客服热线';

  /// zh-CN: '400-123-4567'
  String get customerServiceNumber =>
      TranslationOverrides.string(_root.$meta, 'about.customerServiceNumber', {}) ?? '400-123-4567';

  /// zh-CN: '公司地址'
  String get companyAddress => TranslationOverrides.string(_root.$meta, 'about.companyAddress', {}) ?? '公司地址';

  /// zh-CN: '北京市朝阳区详细地址'
  String get addressDetails => TranslationOverrides.string(_root.$meta, 'about.addressDetails', {}) ?? '北京市朝阳区详细地址';

  /// zh-CN: '特色功能'
  String get featuresTitle => TranslationOverrides.string(_root.$meta, 'about.featuresTitle', {}) ?? '特色功能';

  /// zh-CN: '快速便捷'
  String get feature1Title => TranslationOverrides.string(_root.$meta, 'about.feature1Title', {}) ?? '快速便捷';

  /// zh-CN: '一键点餐'
  String get feature1Desc => TranslationOverrides.string(_root.$meta, 'about.feature1Desc', {}) ?? '一键点餐';

  /// zh-CN: '安全可靠'
  String get feature2Title => TranslationOverrides.string(_root.$meta, 'about.feature2Title', {}) ?? '安全可靠';

  /// zh-CN: '多重保护'
  String get feature2Desc => TranslationOverrides.string(_root.$meta, 'about.feature2Desc', {}) ?? '多重保护';

  /// zh-CN: '准时送达'
  String get feature3Title => TranslationOverrides.string(_root.$meta, 'about.feature3Title', {}) ?? '准时送达';

  /// zh-CN: '超时赔付'
  String get feature3Desc => TranslationOverrides.string(_root.$meta, 'about.feature3Desc', {}) ?? '超时赔付';

  /// zh-CN: '品质优选'
  String get feature4Title => TranslationOverrides.string(_root.$meta, 'about.feature4Title', {}) ?? '品质优选';

  /// zh-CN: '严选好店'
  String get feature4Desc => TranslationOverrides.string(_root.$meta, 'about.feature4Desc', {}) ?? '严选好店';

  /// zh-CN: '政策与协议'
  String get policyTitle => TranslationOverrides.string(_root.$meta, 'about.policyTitle', {}) ?? '政策与协议';

  /// zh-CN: '用户协议和隐私政策'
  String get userAgreementAndPrivacy =>
      TranslationOverrides.string(_root.$meta, 'about.userAgreementAndPrivacy', {}) ?? '用户协议和隐私政策';

  /// zh-CN: '查看详情'
  String get viewDetails => TranslationOverrides.string(_root.$meta, 'about.viewDetails', {}) ?? '查看详情';

  /// zh-CN: '分享给朋友'
  String get shareWithFriends => TranslationOverrides.string(_root.$meta, 'about.shareWithFriends', {}) ?? '分享给朋友';
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

  /// zh-CN: '请输入用户名、手机号或邮箱'
  String get enterUsernameHint =>
      TranslationOverrides.string(_root.$meta, 'auth.enterUsernameHint', {}) ?? '请输入用户名、手机号或邮箱';

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

  /// zh-CN: '欢迎回来'
  String get welcomeBack => TranslationOverrides.string(_root.$meta, 'common.welcomeBack', {}) ?? '欢迎回来';

  /// zh-CN: '消息通知'
  String get notifications => TranslationOverrides.string(_root.$meta, 'common.notifications', {}) ?? '消息通知';
}

// Path: device_info
class TranslationsDeviceInfoZhCn {
  TranslationsDeviceInfoZhCn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// zh-CN: '设备信息'
  String get title => TranslationOverrides.string(_root.$meta, 'device_info.title', {}) ?? '设备信息';

  /// zh-CN: '浏览器'
  String get browser => TranslationOverrides.string(_root.$meta, 'device_info.browser', {}) ?? '浏览器';

  /// zh-CN: '平台'
  String get platform => TranslationOverrides.string(_root.$meta, 'device_info.platform', {}) ?? '平台';

  /// zh-CN: 'User Agent'
  String get userAgent => TranslationOverrides.string(_root.$meta, 'device_info.userAgent', {}) ?? 'User Agent';

  /// zh-CN: '语言'
  String get language => TranslationOverrides.string(_root.$meta, 'device_info.language', {}) ?? '语言';

  /// zh-CN: '内存'
  String get memory => TranslationOverrides.string(_root.$meta, 'device_info.memory', {}) ?? '内存';

  /// zh-CN: '品牌'
  String get brand => TranslationOverrides.string(_root.$meta, 'device_info.brand', {}) ?? '品牌';

  /// zh-CN: '型号'
  String get model => TranslationOverrides.string(_root.$meta, 'device_info.model', {}) ?? '型号';

  /// zh-CN: '系统版本'
  String get systemVersion => TranslationOverrides.string(_root.$meta, 'device_info.systemVersion', {}) ?? '系统版本';

  /// zh-CN: 'SDK 版本'
  String get sdkVersion => TranslationOverrides.string(_root.$meta, 'device_info.sdkVersion', {}) ?? 'SDK 版本';

  /// zh-CN: '制造商'
  String get manufacturer => TranslationOverrides.string(_root.$meta, 'device_info.manufacturer', {}) ?? '制造商';

  /// zh-CN: '硬件'
  String get hardware => TranslationOverrides.string(_root.$meta, 'device_info.hardware', {}) ?? '硬件';

  /// zh-CN: '主机'
  String get host => TranslationOverrides.string(_root.$meta, 'device_info.host', {}) ?? '主机';

  /// zh-CN: '设备 ID'
  String get id => TranslationOverrides.string(_root.$meta, 'device_info.id', {}) ?? '设备 ID';

  /// zh-CN: '设备名称'
  String get name => TranslationOverrides.string(_root.$meta, 'device_info.name', {}) ?? '设备名称';

  /// zh-CN: '系统名称'
  String get systemName => TranslationOverrides.string(_root.$meta, 'device_info.systemName', {}) ?? '系统名称';

  /// zh-CN: '机器型号'
  String get machine => TranslationOverrides.string(_root.$meta, 'device_info.machine', {}) ?? '机器型号';

  /// zh-CN: '唯一标识符'
  String get uniqueId => TranslationOverrides.string(_root.$meta, 'device_info.uniqueId', {}) ?? '唯一标识符';
}

// Path: feedback
class TranslationsFeedbackZhCn {
  TranslationsFeedbackZhCn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// zh-CN: '问题反馈'
  String get title => TranslationOverrides.string(_root.$meta, 'feedback.title', {}) ?? '问题反馈';

  /// zh-CN: '您的反馈是我们进步的动力'
  String get subtitle => TranslationOverrides.string(_root.$meta, 'feedback.subtitle', {}) ?? '您的反馈是我们进步的动力';

  /// zh-CN: '选择反馈类型'
  String get selectType => TranslationOverrides.string(_root.$meta, 'feedback.selectType', {}) ?? '选择反馈类型';

  /// zh-CN: '错误报告'
  String get errorReport => TranslationOverrides.string(_root.$meta, 'feedback.errorReport', {}) ?? '错误报告';

  /// zh-CN: '建议'
  String get suggestion => TranslationOverrides.string(_root.$meta, 'feedback.suggestion', {}) ?? '建议';

  /// zh-CN: '投诉'
  String get complaint => TranslationOverrides.string(_root.$meta, 'feedback.complaint', {}) ?? '投诉';

  /// zh-CN: '其他'
  String get other => TranslationOverrides.string(_root.$meta, 'feedback.other', {}) ?? '其他';

  /// zh-CN: '问题描述'
  String get description => TranslationOverrides.string(_root.$meta, 'feedback.description', {}) ?? '问题描述';

  /// zh-CN: '请输入问题标题 (必填)'
  String get titleHint => TranslationOverrides.string(_root.$meta, 'feedback.titleHint', {}) ?? '请输入问题标题 (必填)';

  /// zh-CN: '请详细描述您遇到的问题或建议 (必填)'
  String get contentHint =>
      TranslationOverrides.string(_root.$meta, 'feedback.contentHint', {}) ?? '请详细描述您遇到的问题或建议 (必填)';

  /// zh-CN: '上传截图 (可选)'
  String get uploadScreenshot =>
      TranslationOverrides.string(_root.$meta, 'feedback.uploadScreenshot', {}) ?? '上传截图 (可选)';

  /// zh-CN: '添加图片'
  String get addImage => TranslationOverrides.string(_root.$meta, 'feedback.addImage', {}) ?? '添加图片';

  /// zh-CN: '最多可上传3张图片，每张不超过2MB，支持jpg、png格式'
  String get uploadLimitHint =>
      TranslationOverrides.string(_root.$meta, 'feedback.uploadLimitHint', {}) ?? '最多可上传3张图片，每张不超过2MB，支持jpg、png格式';

  /// zh-CN: '联系方式 (可选)'
  String get contactOptional => TranslationOverrides.string(_root.$meta, 'feedback.contactOptional', {}) ?? '联系方式 (可选)';

  /// zh-CN: '请输入您的手机号或邮箱，方便我们联系您'
  String get contactInputHint =>
      TranslationOverrides.string(_root.$meta, 'feedback.contactInputHint', {}) ?? '请输入您的手机号或邮箱，方便我们联系您';

  /// zh-CN: '提交反馈'
  String get submit => TranslationOverrides.string(_root.$meta, 'feedback.submit', {}) ?? '提交反馈';

  /// zh-CN: '反馈提交成功，感谢您的支持'
  String get submitSuccess => TranslationOverrides.string(_root.$meta, 'feedback.submitSuccess', {}) ?? '反馈提交成功，感谢您的支持';

  /// zh-CN: '反馈提交失败，请稍后重试'
  String get submitFailed => TranslationOverrides.string(_root.$meta, 'feedback.submitFailed', {}) ?? '反馈提交失败，请稍后重试';
}

// Path: inventory
class TranslationsInventoryZhCn {
  TranslationsInventoryZhCn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// zh-CN: '补货管理'
  String get machineList => TranslationOverrides.string(_root.$meta, 'inventory.machineList', {}) ?? '补货管理';

  /// zh-CN: '总货道'
  String get totalSlots => TranslationOverrides.string(_root.$meta, 'inventory.totalSlots', {}) ?? '总货道';

  /// zh-CN: '低库存'
  String get lowStockSlots => TranslationOverrides.string(_root.$meta, 'inventory.lowStockSlots', {}) ?? '低库存';

  /// zh-CN: '空货道'
  String get emptySlots => TranslationOverrides.string(_root.$meta, 'inventory.emptySlots', {}) ?? '空货道';

  /// zh-CN: '货道管理'
  String get slotList => TranslationOverrides.string(_root.$meta, 'inventory.slotList', {}) ?? '货道管理';

  /// zh-CN: '货道编号'
  String get slotNumber => TranslationOverrides.string(_root.$meta, 'inventory.slotNumber', {}) ?? '货道编号';

  /// zh-CN: '商品名称'
  String get productName => TranslationOverrides.string(_root.$meta, 'inventory.productName', {}) ?? '商品名称';

  /// zh-CN: '数量'
  String get quantity => TranslationOverrides.string(_root.$meta, 'inventory.quantity', {}) ?? '数量';

  /// zh-CN: '低库存'
  String get lowStock => TranslationOverrides.string(_root.$meta, 'inventory.lowStock', {}) ?? '低库存';

  /// zh-CN: '空货道'
  String get empty => TranslationOverrides.string(_root.$meta, 'inventory.empty', {}) ?? '空货道';

  /// zh-CN: '编辑数量'
  String get editQuantity => TranslationOverrides.string(_root.$meta, 'inventory.editQuantity', {}) ?? '编辑数量';

  /// zh-CN: '确认'
  String get confirm => TranslationOverrides.string(_root.$meta, 'inventory.confirm', {}) ?? '确认';

  /// zh-CN: '取消'
  String get cancel => TranslationOverrides.string(_root.$meta, 'inventory.cancel', {}) ?? '取消';

  /// zh-CN: '更新成功'
  String get updateSuccess => TranslationOverrides.string(_root.$meta, 'inventory.updateSuccess', {}) ?? '更新成功';

  /// zh-CN: '更新失败'
  String get updateFailed => TranslationOverrides.string(_root.$meta, 'inventory.updateFailed', {}) ?? '更新失败';

  /// zh-CN: '数量必须为非负整数'
  String get quantityMustBeNonNegative =>
      TranslationOverrides.string(_root.$meta, 'inventory.quantityMustBeNonNegative', {}) ?? '数量必须为非负整数';

  /// zh-CN: '暂无货道'
  String get emptyState => TranslationOverrides.string(_root.$meta, 'inventory.emptyState', {}) ?? '暂无货道';
}

// Path: machines
class TranslationsMachinesZhCn {
  TranslationsMachinesZhCn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// zh-CN: '运营仪表盘'
  String get dashboard => TranslationOverrides.string(_root.$meta, 'machines.dashboard', {}) ?? '运营仪表盘';

  /// zh-CN: '机器列表'
  String get machineList => TranslationOverrides.string(_root.$meta, 'machines.machineList', {}) ?? '机器列表';

  /// zh-CN: '订单记录'
  String get orderList => TranslationOverrides.string(_root.$meta, 'machines.orderList', {}) ?? '订单记录';

  /// zh-CN: '营收趋势'
  String get revenueTrend => TranslationOverrides.string(_root.$meta, 'machines.revenueTrend', {}) ?? '营收趋势';

  /// zh-CN: '订单量'
  String get orderVolume => TranslationOverrides.string(_root.$meta, 'machines.orderVolume', {}) ?? '订单量';

  /// zh-CN: '商品销售占比'
  String get productSalesRatio =>
      TranslationOverrides.string(_root.$meta, 'machines.productSalesRatio', {}) ?? '商品销售占比';

  /// zh-CN: '机器收益对比'
  String get machineRevenueComparison =>
      TranslationOverrides.string(_root.$meta, 'machines.machineRevenueComparison', {}) ?? '机器收益对比';

  /// zh-CN: '总营收'
  String get totalRevenue => TranslationOverrides.string(_root.$meta, 'machines.totalRevenue', {}) ?? '总营收';

  /// zh-CN: '总订单数'
  String get totalOrders => TranslationOverrides.string(_root.$meta, 'machines.totalOrders', {}) ?? '总订单数';

  /// zh-CN: '日均营收'
  String get dailyAvgRevenue => TranslationOverrides.string(_root.$meta, 'machines.dailyAvgRevenue', {}) ?? '日均营收';

  /// zh-CN: '环比增长率'
  String get growthRate => TranslationOverrides.string(_root.$meta, 'machines.growthRate', {}) ?? '环比增长率';

  /// zh-CN: '总设备数量'
  String get totalMachines => TranslationOverrides.string(_root.$meta, 'machines.totalMachines', {}) ?? '总设备数量';

  /// zh-CN: '暂无数据'
  String get noChartData => TranslationOverrides.string(_root.$meta, 'machines.noChartData', {}) ?? '暂无数据';

  /// zh-CN: '加载中'
  String get loading => TranslationOverrides.string(_root.$meta, 'machines.loading', {}) ?? '加载中';

  /// zh-CN: '¥'
  String get currencyPrefix => TranslationOverrides.string(_root.$meta, 'machines.currencyPrefix', {}) ?? '¥';

  /// zh-CN: '暂无机器'
  String get emptyState => TranslationOverrides.string(_root.$meta, 'machines.emptyState', {}) ?? '暂无机器';

  /// zh-CN: '暂无订单'
  String get emptyOrders => TranslationOverrides.string(_root.$meta, 'machines.emptyOrders', {}) ?? '暂无订单';

  late final TranslationsMachinesTimePeriodZhCn timePeriod = TranslationsMachinesTimePeriodZhCn.internal(_root);

  /// zh-CN: '合计'
  String get total => TranslationOverrides.string(_root.$meta, 'machines.total', {}) ?? '合计';

  /// zh-CN: '单'
  String get orders => TranslationOverrides.string(_root.$meta, 'machines.orders', {}) ?? '单';
}

// Path: maintenance
class TranslationsMaintenanceZhCn {
  TranslationsMaintenanceZhCn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// zh-CN: '维护管理'
  String get machineList => TranslationOverrides.string(_root.$meta, 'maintenance.machineList', {}) ?? '维护管理';

  /// zh-CN: '故障次数'
  String get faultCount => TranslationOverrides.string(_root.$meta, 'maintenance.faultCount', {}) ?? '故障次数';

  /// zh-CN: '最近故障时间'
  String get lastFaultAt => TranslationOverrides.string(_root.$meta, 'maintenance.lastFaultAt', {}) ?? '最近故障时间';

  /// zh-CN: '无故障'
  String get noFaults => TranslationOverrides.string(_root.$meta, 'maintenance.noFaults', {}) ?? '无故障';

  /// zh-CN: '故障记录'
  String get faultList => TranslationOverrides.string(_root.$meta, 'maintenance.faultList', {}) ?? '故障记录';

  /// zh-CN: '故障类型'
  String get faultType => TranslationOverrides.string(_root.$meta, 'maintenance.faultType', {}) ?? '故障类型';

  /// zh-CN: '描述'
  String get description => TranslationOverrides.string(_root.$meta, 'maintenance.description', {}) ?? '描述';

  /// zh-CN: '发生时间'
  String get occurredAt => TranslationOverrides.string(_root.$meta, 'maintenance.occurredAt', {}) ?? '发生时间';

  /// zh-CN: '待处理'
  String get pending => TranslationOverrides.string(_root.$meta, 'maintenance.pending', {}) ?? '待处理';

  /// zh-CN: '已解决'
  String get resolved => TranslationOverrides.string(_root.$meta, 'maintenance.resolved', {}) ?? '已解决';

  /// zh-CN: '待处理'
  String get statusPending => TranslationOverrides.string(_root.$meta, 'maintenance.statusPending', {}) ?? '待处理';

  /// zh-CN: '已解决'
  String get statusResolved => TranslationOverrides.string(_root.$meta, 'maintenance.statusResolved', {}) ?? '已解决';

  /// zh-CN: '暂无故障记录'
  String get noFaultRecords => TranslationOverrides.string(_root.$meta, 'maintenance.noFaultRecords', {}) ?? '暂无故障记录';

  /// zh-CN: '暂无机器'
  String get emptyState => TranslationOverrides.string(_root.$meta, 'maintenance.emptyState', {}) ?? '暂无机器';

  /// zh-CN: '加载失败'
  String get loadFailed => TranslationOverrides.string(_root.$meta, 'maintenance.loadFailed', {}) ?? '加载失败';

  /// zh-CN: '重试'
  String get retry => TranslationOverrides.string(_root.$meta, 'maintenance.retry', {}) ?? '重试';
}

// Path: navigation
class TranslationsNavigationZhCn {
  TranslationsNavigationZhCn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// zh-CN: '代理'
  String get machines => TranslationOverrides.string(_root.$meta, 'navigation.machines', {}) ?? '代理';

  /// zh-CN: '库存'
  String get inventory => TranslationOverrides.string(_root.$meta, 'navigation.inventory', {}) ?? '库存';

  /// zh-CN: '运维'
  String get maintenance => TranslationOverrides.string(_root.$meta, 'navigation.maintenance', {}) ?? '运维';

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

// Path: notifications
class TranslationsNotificationsZhCn {
  TranslationsNotificationsZhCn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// zh-CN: '消息通知'
  String get title => TranslationOverrides.string(_root.$meta, 'notifications.title', {}) ?? '消息通知';

  /// zh-CN: '全部标记为已读'
  String get markAllRead => TranslationOverrides.string(_root.$meta, 'notifications.markAllRead', {}) ?? '全部标记为已读';

  /// zh-CN: '暂无通知'
  String get empty => TranslationOverrides.string(_root.$meta, 'notifications.empty', {}) ?? '暂无通知';

  /// zh-CN: '未读消息'
  String get unread => TranslationOverrides.string(_root.$meta, 'notifications.unread', {}) ?? '未读消息';

  /// zh-CN: '已读消息'
  String get read => TranslationOverrides.string(_root.$meta, 'notifications.read', {}) ?? '已读消息';

  late final TranslationsNotificationsPriorityZhCn priority = TranslationsNotificationsPriorityZhCn.internal(_root);
}

// Path: profile
class TranslationsProfileZhCn {
  TranslationsProfileZhCn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// zh-CN: '个人中心'
  String get title => TranslationOverrides.string(_root.$meta, 'profile.title', {}) ?? '个人中心';

  /// zh-CN: '未登录'
  String get notLoggedIn => TranslationOverrides.string(_root.$meta, 'profile.notLoggedIn', {}) ?? '未登录';

  /// zh-CN: '编辑资料'
  String get editProfile => TranslationOverrides.string(_root.$meta, 'profile.editProfile', {}) ?? '编辑资料';

  /// zh-CN: '退出登录'
  String get logout => TranslationOverrides.string(_root.$meta, 'profile.logout', {}) ?? '退出登录';

  /// zh-CN: '收藏设备'
  String get favoriteDevices => TranslationOverrides.string(_root.$meta, 'profile.favoriteDevices', {}) ?? '收藏设备';

  /// zh-CN: '个人信息'
  String get personalInfo => TranslationOverrides.string(_root.$meta, 'profile.personalInfo', {}) ?? '个人信息';

  /// zh-CN: '确认退出'
  String get confirmLogout => TranslationOverrides.string(_root.$meta, 'profile.confirmLogout', {}) ?? '确认退出';

  /// zh-CN: '确定要退出登录吗？'
  String get confirmLogoutContent =>
      TranslationOverrides.string(_root.$meta, 'profile.confirmLogoutContent', {}) ?? '确定要退出登录吗？';

  /// zh-CN: '确定要清除所有缓存数据吗？'
  String get clearCacheConfirm =>
      TranslationOverrides.string(_root.$meta, 'profile.clearCacheConfirm', {}) ?? '确定要清除所有缓存数据吗？';

  /// zh-CN: '暂无收藏设备'
  String get noFavoriteDevices => TranslationOverrides.string(_root.$meta, 'profile.noFavoriteDevices', {}) ?? '暂无收藏设备';

  /// zh-CN: '取消收藏'
  String get removeFavorite => TranslationOverrides.string(_root.$meta, 'profile.removeFavorite', {}) ?? '取消收藏';

  /// zh-CN: '确定要取消收藏"${name}"吗？'
  String removeFavoriteConfirm({required Object name}) =>
      TranslationOverrides.string(_root.$meta, 'profile.removeFavoriteConfirm', {'name': name}) ?? '确定要取消收藏"${name}"吗？';

  /// zh-CN: '一个便捷的自动售货机购买应用'
  String get appDescription =>
      TranslationOverrides.string(_root.$meta, 'profile.appDescription', {}) ?? '一个便捷的自动售货机购买应用';

  /// zh-CN: '版本：${version}'
  String version({required Object version}) =>
      TranslationOverrides.string(_root.$meta, 'profile.version', {'version': version}) ?? '版本：${version}';

  /// zh-CN: '我的钱包'
  String get wallet => TranslationOverrides.string(_root.$meta, 'profile.wallet', {}) ?? '我的钱包';

  /// zh-CN: '优惠券'
  String get coupon => TranslationOverrides.string(_root.$meta, 'profile.coupon', {}) ?? '优惠券';

  /// zh-CN: '问题反馈'
  String get feedback => TranslationOverrides.string(_root.$meta, 'profile.feedback', {}) ?? '问题反馈';

  /// zh-CN: '合作商加盟'
  String get cooperation => TranslationOverrides.string(_root.$meta, 'profile.cooperation', {}) ?? '合作商加盟';

  /// zh-CN: '关于我们'
  String get about => TranslationOverrides.string(_root.$meta, 'profile.about', {}) ?? '关于我们';

  /// zh-CN: '设置'
  String get settings => TranslationOverrides.string(_root.$meta, 'profile.settings', {}) ?? '设置';

  late final TranslationsProfileGenderZhCn gender = TranslationsProfileGenderZhCn.internal(_root);
  late final TranslationsProfileInfoZhCn info = TranslationsProfileInfoZhCn.internal(_root);
  late final TranslationsProfileAvatarZhCn avatar = TranslationsProfileAvatarZhCn.internal(_root);

  /// zh-CN: '保存成功'
  String get saveSuccess => TranslationOverrides.string(_root.$meta, 'profile.saveSuccess', {}) ?? '保存成功';

  /// zh-CN: '保存失败: ${error}'
  String saveFailed({required Object error}) =>
      TranslationOverrides.string(_root.$meta, 'profile.saveFailed', {'error': error}) ?? '保存失败: ${error}';

  /// zh-CN: '保存信息'
  String get saveInfo => TranslationOverrides.string(_root.$meta, 'profile.saveInfo', {}) ?? '保存信息';

  /// zh-CN: '钱包余额'
  String get walletBalance => TranslationOverrides.string(_root.$meta, 'profile.walletBalance', {}) ?? '钱包余额';

  /// zh-CN: '积分'
  String get coin => TranslationOverrides.string(_root.$meta, 'profile.coin', {}) ?? '积分';

  /// zh-CN: '优惠券'
  String get couponCount => TranslationOverrides.string(_root.$meta, 'profile.couponCount', {}) ?? '优惠券';

  /// zh-CN: '积分兑换'
  String get pointsMall => TranslationOverrides.string(_root.$meta, 'profile.pointsMall', {}) ?? '积分兑换';

  late final TranslationsProfileWalletPageZhCn walletPage = TranslationsProfileWalletPageZhCn.internal(_root);
}

// Path: settings
class TranslationsSettingsZhCn {
  TranslationsSettingsZhCn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// zh-CN: '设置'
  String get title => TranslationOverrides.string(_root.$meta, 'settings.title', {}) ?? '设置';

  /// zh-CN: '通用'
  String get general => TranslationOverrides.string(_root.$meta, 'settings.general', {}) ?? '通用';

  /// zh-CN: '主题模式'
  String get theme => TranslationOverrides.string(_root.$meta, 'settings.theme', {}) ?? '主题模式';

  /// zh-CN: '浅色'
  String get themeLight => TranslationOverrides.string(_root.$meta, 'settings.themeLight', {}) ?? '浅色';

  /// zh-CN: '深色'
  String get themeDark => TranslationOverrides.string(_root.$meta, 'settings.themeDark', {}) ?? '深色';

  /// zh-CN: '跟随系统'
  String get themeSystem => TranslationOverrides.string(_root.$meta, 'settings.themeSystem', {}) ?? '跟随系统';

  /// zh-CN: '语言'
  String get language => TranslationOverrides.string(_root.$meta, 'settings.language', {}) ?? '语言';

  /// zh-CN: '检查更新'
  String get checkUpdate => TranslationOverrides.string(_root.$meta, 'settings.checkUpdate', {}) ?? '检查更新';

  /// zh-CN: '清除缓存'
  String get clearCache => TranslationOverrides.string(_root.$meta, 'settings.clearCache', {}) ?? '清除缓存';

  /// zh-CN: '关于'
  String get about => TranslationOverrides.string(_root.$meta, 'settings.about', {}) ?? '关于';

  /// zh-CN: '设备信息'
  String get deviceInfo => TranslationOverrides.string(_root.$meta, 'settings.deviceInfo', {}) ?? '设备信息';

  /// zh-CN: '关于我们'
  String get aboutUs => TranslationOverrides.string(_root.$meta, 'settings.aboutUs', {}) ?? '关于我们';

  /// zh-CN: '正在检查更新...'
  String get checkingUpdate => TranslationOverrides.string(_root.$meta, 'settings.checkingUpdate', {}) ?? '正在检查更新...';

  /// zh-CN: '缓存已清除'
  String get cacheCleared => TranslationOverrides.string(_root.$meta, 'settings.cacheCleared', {}) ?? '缓存已清除';

  /// zh-CN: '英语'
  String get english => TranslationOverrides.string(_root.$meta, 'settings.english', {}) ?? '英语';

  /// zh-CN: '简体中文'
  String get chinese => TranslationOverrides.string(_root.$meta, 'settings.chinese', {}) ?? '简体中文';

  /// zh-CN: '繁体中文'
  String get traditionalChinese =>
      TranslationOverrides.string(_root.$meta, 'settings.traditionalChinese', {}) ?? '繁体中文';

  /// zh-CN: '主题配色'
  String get themeScheme => TranslationOverrides.string(_root.$meta, 'settings.themeScheme', {}) ?? '主题配色';

  late final TranslationsSettingsSchemesZhCn schemes = TranslationsSettingsSchemesZhCn.internal(_root);

  /// zh-CN: '应用名称'
  String get appName => TranslationOverrides.string(_root.$meta, 'settings.appName', {}) ?? '应用名称';

  /// zh-CN: '包名'
  String get packageName => TranslationOverrides.string(_root.$meta, 'settings.packageName', {}) ?? '包名';

  /// zh-CN: '版本号'
  String get versionName => TranslationOverrides.string(_root.$meta, 'settings.versionName', {}) ?? '版本号';

  /// zh-CN: '构建号'
  String get buildNumber => TranslationOverrides.string(_root.$meta, 'settings.buildNumber', {}) ?? '构建号';

  /// zh-CN: '© 2024 Lunchbox Team'
  String get copyright => TranslationOverrides.string(_root.$meta, 'settings.copyright', {}) ?? '© 2024 Lunchbox Team';
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

// Path: welcome_gift
class TranslationsWelcomeGiftZhCn {
  TranslationsWelcomeGiftZhCn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// zh-CN: '新人礼包'
  String get title => TranslationOverrides.string(_root.$meta, 'welcome_gift.title', {}) ?? '新人礼包';
}

// Path: machines.timePeriod
class TranslationsMachinesTimePeriodZhCn {
  TranslationsMachinesTimePeriodZhCn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// zh-CN: '日'
  String get day => TranslationOverrides.string(_root.$meta, 'machines.timePeriod.day', {}) ?? '日';

  /// zh-CN: '周'
  String get week => TranslationOverrides.string(_root.$meta, 'machines.timePeriod.week', {}) ?? '周';

  /// zh-CN: '月'
  String get month => TranslationOverrides.string(_root.$meta, 'machines.timePeriod.month', {}) ?? '月';

  /// zh-CN: '季度'
  String get quarter => TranslationOverrides.string(_root.$meta, 'machines.timePeriod.quarter', {}) ?? '季度';

  /// zh-CN: '年'
  String get year => TranslationOverrides.string(_root.$meta, 'machines.timePeriod.year', {}) ?? '年';
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

// Path: notifications.priority
class TranslationsNotificationsPriorityZhCn {
  TranslationsNotificationsPriorityZhCn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// zh-CN: '高优先级'
  String get high => TranslationOverrides.string(_root.$meta, 'notifications.priority.high', {}) ?? '高优先级';

  /// zh-CN: '普通'
  String get medium => TranslationOverrides.string(_root.$meta, 'notifications.priority.medium', {}) ?? '普通';

  /// zh-CN: '低优先级'
  String get low => TranslationOverrides.string(_root.$meta, 'notifications.priority.low', {}) ?? '低优先级';
}

// Path: profile.gender
class TranslationsProfileGenderZhCn {
  TranslationsProfileGenderZhCn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// zh-CN: '男'
  String get male => TranslationOverrides.string(_root.$meta, 'profile.gender.male', {}) ?? '男';

  /// zh-CN: '女'
  String get female => TranslationOverrides.string(_root.$meta, 'profile.gender.female', {}) ?? '女';

  /// zh-CN: '保密'
  String get unknown => TranslationOverrides.string(_root.$meta, 'profile.gender.unknown', {}) ?? '保密';
}

// Path: profile.info
class TranslationsProfileInfoZhCn {
  TranslationsProfileInfoZhCn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// zh-CN: '基本信息'
  String get basic => TranslationOverrides.string(_root.$meta, 'profile.info.basic', {}) ?? '基本信息';

  /// zh-CN: '其他信息'
  String get other => TranslationOverrides.string(_root.$meta, 'profile.info.other', {}) ?? '其他信息';

  /// zh-CN: '手机号'
  String get phone => TranslationOverrides.string(_root.$meta, 'profile.info.phone', {}) ?? '手机号';

  /// zh-CN: '性别'
  String get gender => TranslationOverrides.string(_root.$meta, 'profile.info.gender', {}) ?? '性别';

  /// zh-CN: '生日'
  String get birthday => TranslationOverrides.string(_root.$meta, 'profile.info.birthday', {}) ?? '生日';

  /// zh-CN: '邮箱'
  String get email => TranslationOverrides.string(_root.$meta, 'profile.info.email', {}) ?? '邮箱';

  /// zh-CN: '未设置'
  String get notSet => TranslationOverrides.string(_root.$meta, 'profile.info.notSet', {}) ?? '未设置';
}

// Path: profile.avatar
class TranslationsProfileAvatarZhCn {
  TranslationsProfileAvatarZhCn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// zh-CN: '点击更换头像'
  String get clickToChange => TranslationOverrides.string(_root.$meta, 'profile.avatar.clickToChange', {}) ?? '点击更换头像';

  /// zh-CN: '头像上传功能开发中'
  String get uploading => TranslationOverrides.string(_root.$meta, 'profile.avatar.uploading', {}) ?? '头像上传功能开发中';
}

// Path: profile.walletPage
class TranslationsProfileWalletPageZhCn {
  TranslationsProfileWalletPageZhCn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// zh-CN: '钱包'
  String get title => TranslationOverrides.string(_root.$meta, 'profile.walletPage.title', {}) ?? '钱包';

  /// zh-CN: '充值'
  String get topUp => TranslationOverrides.string(_root.$meta, 'profile.walletPage.topUp', {}) ?? '充值';

  /// zh-CN: '钱包余额'
  String get balance => TranslationOverrides.string(_root.$meta, 'profile.walletPage.balance', {}) ?? '钱包余额';

  /// zh-CN: '选择充值金额'
  String get selectAmount =>
      TranslationOverrides.string(_root.$meta, 'profile.walletPage.selectAmount', {}) ?? '选择充值金额';

  /// zh-CN: '规则说明'
  String get rule => TranslationOverrides.string(_root.$meta, 'profile.walletPage.rule', {}) ?? '规则说明';

  /// zh-CN: '充值部分套餐可获取积分，自选金额充值不获取积分'
  String get ruleDesc =>
      TranslationOverrides.string(_root.$meta, 'profile.walletPage.ruleDesc', {}) ?? '充值部分套餐可获取积分，自选金额充值不获取积分';

  /// zh-CN: '自选金额'
  String get customAmount => TranslationOverrides.string(_root.$meta, 'profile.walletPage.customAmount', {}) ?? '自选金额';

  /// zh-CN: '仅限500元以上充值'
  String get customAmountHint =>
      TranslationOverrides.string(_root.$meta, 'profile.walletPage.customAmountHint', {}) ?? '仅限500元以上充值';

  /// zh-CN: '实付¥${amount}'
  String realPay({required Object amount}) =>
      TranslationOverrides.string(_root.$meta, 'profile.walletPage.realPay', {'amount': amount}) ?? '实付¥${amount}';

  /// zh-CN: '送${amount}积分'
  String bonus({required Object amount}) =>
      TranslationOverrides.string(_root.$meta, 'profile.walletPage.bonus', {'amount': amount}) ?? '送${amount}积分';

  /// zh-CN: '无积分'
  String get noBonus => TranslationOverrides.string(_root.$meta, 'profile.walletPage.noBonus', {}) ?? '无积分';

  /// zh-CN: '充值记录'
  String get history => TranslationOverrides.string(_root.$meta, 'profile.walletPage.history', {}) ?? '充值记录';

  /// zh-CN: '共${count}笔'
  String historyCount({required Object count}) =>
      TranslationOverrides.string(_root.$meta, 'profile.walletPage.historyCount', {'count': count}) ?? '共${count}笔';

  /// zh-CN: '暂无充值记录'
  String get noHistory => TranslationOverrides.string(_root.$meta, 'profile.walletPage.noHistory', {}) ?? '暂无充值记录';

  late final TranslationsProfileWalletPageRulesZhCn rules = TranslationsProfileWalletPageRulesZhCn.internal(_root);
}

// Path: settings.schemes
class TranslationsSettingsSchemesZhCn {
  TranslationsSettingsSchemesZhCn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// zh-CN: '活力橙 (ShadOrange)'
  String get shadOrange =>
      TranslationOverrides.string(_root.$meta, 'settings.schemes.shadOrange', {}) ?? '活力橙 (ShadOrange)';

  /// zh-CN: '自然绿 (ShadGreen)'
  String get shadGreen =>
      TranslationOverrides.string(_root.$meta, 'settings.schemes.shadGreen', {}) ?? '自然绿 (ShadGreen)';

  /// zh-CN: '巴哈马蓝 (BahamaBlue)'
  String get bahamaBlue =>
      TranslationOverrides.string(_root.$meta, 'settings.schemes.bahamaBlue', {}) ?? '巴哈马蓝 (BahamaBlue)';

  /// zh-CN: '锦缎红 (Damask)'
  String get damask => TranslationOverrides.string(_root.$meta, 'settings.schemes.damask', {}) ?? '锦缎红 (Damask)';
}

// Path: profile.walletPage.rules
class TranslationsProfileWalletPageRulesZhCn {
  TranslationsProfileWalletPageRulesZhCn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// zh-CN: '钱包规则'
  String get title => TranslationOverrides.string(_root.$meta, 'profile.walletPage.rules.title', {}) ?? '钱包规则';

  /// zh-CN: '钱包充值说明'
  String get headerTitle =>
      TranslationOverrides.string(_root.$meta, 'profile.walletPage.rules.headerTitle', {}) ?? '钱包充值说明';

  /// zh-CN: '请仔细阅读规则后进行充值'
  String get headerDesc =>
      TranslationOverrides.string(_root.$meta, 'profile.walletPage.rules.headerDesc', {}) ?? '请仔细阅读规则后进行充值';

  late final TranslationsProfileWalletPageRulesRechargeRulesZhCn rechargeRules =
      TranslationsProfileWalletPageRulesRechargeRulesZhCn.internal(_root);
  late final TranslationsProfileWalletPageRulesUsageInstructionsZhCn usageInstructions =
      TranslationsProfileWalletPageRulesUsageInstructionsZhCn.internal(_root);
}

// Path: profile.walletPage.rules.rechargeRules
class TranslationsProfileWalletPageRulesRechargeRulesZhCn {
  TranslationsProfileWalletPageRulesRechargeRulesZhCn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// zh-CN: '充值规则'
  String get title =>
      TranslationOverrides.string(_root.$meta, 'profile.walletPage.rules.rechargeRules.title', {}) ?? '充值规则';

  List<String> get items =>
      TranslationOverrides.list(_root.$meta, 'profile.walletPage.rules.rechargeRules.items') ??
      ['单次充值最低100元', '充值金额单次有100000元上限', '充值成功后立即到账', '充值金额可用于购买商品和支付订单', '充值部分套餐可获取积分，自选金额充值只可获取400积分'];
}

// Path: profile.walletPage.rules.usageInstructions
class TranslationsProfileWalletPageRulesUsageInstructionsZhCn {
  TranslationsProfileWalletPageRulesUsageInstructionsZhCn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// zh-CN: '使用说明'
  String get title =>
      TranslationOverrides.string(_root.$meta, 'profile.walletPage.rules.usageInstructions.title', {}) ?? '使用说明';

  List<String> get items =>
      TranslationOverrides.list(_root.$meta, 'profile.walletPage.rules.usageInstructions.items') ??
      ['钱包余额可用于支付订单', '余额不足时可选择充值或使用其他支付方式', '充值记录永久保存，可随时查看', '如有问题请联系客服处理'];
}

/// The flat map containing all translations for locale <zh-CN>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on Translations {
  dynamic _flatMapFunction(String path) {
    return switch (path) {
      'about.title' => TranslationOverrides.string(_root.$meta, 'about.title', {}) ?? '关于我们',
      'about.contactTitle' => TranslationOverrides.string(_root.$meta, 'about.contactTitle', {}) ?? '联系我们',
      'about.customerServiceHotline' =>
        TranslationOverrides.string(_root.$meta, 'about.customerServiceHotline', {}) ?? '客服热线',
      'about.customerServiceNumber' =>
        TranslationOverrides.string(_root.$meta, 'about.customerServiceNumber', {}) ?? '400-123-4567',
      'about.companyAddress' => TranslationOverrides.string(_root.$meta, 'about.companyAddress', {}) ?? '公司地址',
      'about.addressDetails' => TranslationOverrides.string(_root.$meta, 'about.addressDetails', {}) ?? '北京市朝阳区详细地址',
      'about.featuresTitle' => TranslationOverrides.string(_root.$meta, 'about.featuresTitle', {}) ?? '特色功能',
      'about.feature1Title' => TranslationOverrides.string(_root.$meta, 'about.feature1Title', {}) ?? '快速便捷',
      'about.feature1Desc' => TranslationOverrides.string(_root.$meta, 'about.feature1Desc', {}) ?? '一键点餐',
      'about.feature2Title' => TranslationOverrides.string(_root.$meta, 'about.feature2Title', {}) ?? '安全可靠',
      'about.feature2Desc' => TranslationOverrides.string(_root.$meta, 'about.feature2Desc', {}) ?? '多重保护',
      'about.feature3Title' => TranslationOverrides.string(_root.$meta, 'about.feature3Title', {}) ?? '准时送达',
      'about.feature3Desc' => TranslationOverrides.string(_root.$meta, 'about.feature3Desc', {}) ?? '超时赔付',
      'about.feature4Title' => TranslationOverrides.string(_root.$meta, 'about.feature4Title', {}) ?? '品质优选',
      'about.feature4Desc' => TranslationOverrides.string(_root.$meta, 'about.feature4Desc', {}) ?? '严选好店',
      'about.policyTitle' => TranslationOverrides.string(_root.$meta, 'about.policyTitle', {}) ?? '政策与协议',
      'about.userAgreementAndPrivacy' =>
        TranslationOverrides.string(_root.$meta, 'about.userAgreementAndPrivacy', {}) ?? '用户协议和隐私政策',
      'about.viewDetails' => TranslationOverrides.string(_root.$meta, 'about.viewDetails', {}) ?? '查看详情',
      'about.shareWithFriends' => TranslationOverrides.string(_root.$meta, 'about.shareWithFriends', {}) ?? '分享给朋友',
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
        TranslationOverrides.string(_root.$meta, 'auth.enterUsernameHint', {}) ?? '请输入用户名、手机号或邮箱',
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
      'common.welcomeBack' => TranslationOverrides.string(_root.$meta, 'common.welcomeBack', {}) ?? '欢迎回来',
      'common.notifications' => TranslationOverrides.string(_root.$meta, 'common.notifications', {}) ?? '消息通知',
      'device_info.title' => TranslationOverrides.string(_root.$meta, 'device_info.title', {}) ?? '设备信息',
      'device_info.browser' => TranslationOverrides.string(_root.$meta, 'device_info.browser', {}) ?? '浏览器',
      'device_info.platform' => TranslationOverrides.string(_root.$meta, 'device_info.platform', {}) ?? '平台',
      'device_info.userAgent' => TranslationOverrides.string(_root.$meta, 'device_info.userAgent', {}) ?? 'User Agent',
      'device_info.language' => TranslationOverrides.string(_root.$meta, 'device_info.language', {}) ?? '语言',
      'device_info.memory' => TranslationOverrides.string(_root.$meta, 'device_info.memory', {}) ?? '内存',
      'device_info.brand' => TranslationOverrides.string(_root.$meta, 'device_info.brand', {}) ?? '品牌',
      'device_info.model' => TranslationOverrides.string(_root.$meta, 'device_info.model', {}) ?? '型号',
      'device_info.systemVersion' =>
        TranslationOverrides.string(_root.$meta, 'device_info.systemVersion', {}) ?? '系统版本',
      'device_info.sdkVersion' => TranslationOverrides.string(_root.$meta, 'device_info.sdkVersion', {}) ?? 'SDK 版本',
      'device_info.manufacturer' => TranslationOverrides.string(_root.$meta, 'device_info.manufacturer', {}) ?? '制造商',
      'device_info.hardware' => TranslationOverrides.string(_root.$meta, 'device_info.hardware', {}) ?? '硬件',
      'device_info.host' => TranslationOverrides.string(_root.$meta, 'device_info.host', {}) ?? '主机',
      'device_info.id' => TranslationOverrides.string(_root.$meta, 'device_info.id', {}) ?? '设备 ID',
      'device_info.name' => TranslationOverrides.string(_root.$meta, 'device_info.name', {}) ?? '设备名称',
      'device_info.systemName' => TranslationOverrides.string(_root.$meta, 'device_info.systemName', {}) ?? '系统名称',
      'device_info.machine' => TranslationOverrides.string(_root.$meta, 'device_info.machine', {}) ?? '机器型号',
      'device_info.uniqueId' => TranslationOverrides.string(_root.$meta, 'device_info.uniqueId', {}) ?? '唯一标识符',
      'feedback.title' => TranslationOverrides.string(_root.$meta, 'feedback.title', {}) ?? '问题反馈',
      'feedback.subtitle' => TranslationOverrides.string(_root.$meta, 'feedback.subtitle', {}) ?? '您的反馈是我们进步的动力',
      'feedback.selectType' => TranslationOverrides.string(_root.$meta, 'feedback.selectType', {}) ?? '选择反馈类型',
      'feedback.errorReport' => TranslationOverrides.string(_root.$meta, 'feedback.errorReport', {}) ?? '错误报告',
      'feedback.suggestion' => TranslationOverrides.string(_root.$meta, 'feedback.suggestion', {}) ?? '建议',
      'feedback.complaint' => TranslationOverrides.string(_root.$meta, 'feedback.complaint', {}) ?? '投诉',
      'feedback.other' => TranslationOverrides.string(_root.$meta, 'feedback.other', {}) ?? '其他',
      'feedback.description' => TranslationOverrides.string(_root.$meta, 'feedback.description', {}) ?? '问题描述',
      'feedback.titleHint' => TranslationOverrides.string(_root.$meta, 'feedback.titleHint', {}) ?? '请输入问题标题 (必填)',
      'feedback.contentHint' =>
        TranslationOverrides.string(_root.$meta, 'feedback.contentHint', {}) ?? '请详细描述您遇到的问题或建议 (必填)',
      'feedback.uploadScreenshot' =>
        TranslationOverrides.string(_root.$meta, 'feedback.uploadScreenshot', {}) ?? '上传截图 (可选)',
      'feedback.addImage' => TranslationOverrides.string(_root.$meta, 'feedback.addImage', {}) ?? '添加图片',
      'feedback.uploadLimitHint' =>
        TranslationOverrides.string(_root.$meta, 'feedback.uploadLimitHint', {}) ?? '最多可上传3张图片，每张不超过2MB，支持jpg、png格式',
      'feedback.contactOptional' =>
        TranslationOverrides.string(_root.$meta, 'feedback.contactOptional', {}) ?? '联系方式 (可选)',
      'feedback.contactInputHint' =>
        TranslationOverrides.string(_root.$meta, 'feedback.contactInputHint', {}) ?? '请输入您的手机号或邮箱，方便我们联系您',
      'feedback.submit' => TranslationOverrides.string(_root.$meta, 'feedback.submit', {}) ?? '提交反馈',
      'feedback.submitSuccess' =>
        TranslationOverrides.string(_root.$meta, 'feedback.submitSuccess', {}) ?? '反馈提交成功，感谢您的支持',
      'feedback.submitFailed' =>
        TranslationOverrides.string(_root.$meta, 'feedback.submitFailed', {}) ?? '反馈提交失败，请稍后重试',
      'inventory.machineList' => TranslationOverrides.string(_root.$meta, 'inventory.machineList', {}) ?? '补货管理',
      'inventory.totalSlots' => TranslationOverrides.string(_root.$meta, 'inventory.totalSlots', {}) ?? '总货道',
      'inventory.lowStockSlots' => TranslationOverrides.string(_root.$meta, 'inventory.lowStockSlots', {}) ?? '低库存',
      'inventory.emptySlots' => TranslationOverrides.string(_root.$meta, 'inventory.emptySlots', {}) ?? '空货道',
      'inventory.slotList' => TranslationOverrides.string(_root.$meta, 'inventory.slotList', {}) ?? '货道管理',
      'inventory.slotNumber' => TranslationOverrides.string(_root.$meta, 'inventory.slotNumber', {}) ?? '货道编号',
      'inventory.productName' => TranslationOverrides.string(_root.$meta, 'inventory.productName', {}) ?? '商品名称',
      'inventory.quantity' => TranslationOverrides.string(_root.$meta, 'inventory.quantity', {}) ?? '数量',
      'inventory.lowStock' => TranslationOverrides.string(_root.$meta, 'inventory.lowStock', {}) ?? '低库存',
      'inventory.empty' => TranslationOverrides.string(_root.$meta, 'inventory.empty', {}) ?? '空货道',
      'inventory.editQuantity' => TranslationOverrides.string(_root.$meta, 'inventory.editQuantity', {}) ?? '编辑数量',
      'inventory.confirm' => TranslationOverrides.string(_root.$meta, 'inventory.confirm', {}) ?? '确认',
      'inventory.cancel' => TranslationOverrides.string(_root.$meta, 'inventory.cancel', {}) ?? '取消',
      'inventory.updateSuccess' => TranslationOverrides.string(_root.$meta, 'inventory.updateSuccess', {}) ?? '更新成功',
      'inventory.updateFailed' => TranslationOverrides.string(_root.$meta, 'inventory.updateFailed', {}) ?? '更新失败',
      'inventory.quantityMustBeNonNegative' =>
        TranslationOverrides.string(_root.$meta, 'inventory.quantityMustBeNonNegative', {}) ?? '数量必须为非负整数',
      'inventory.emptyState' => TranslationOverrides.string(_root.$meta, 'inventory.emptyState', {}) ?? '暂无货道',
      'machines.dashboard' => TranslationOverrides.string(_root.$meta, 'machines.dashboard', {}) ?? '运营仪表盘',
      'machines.machineList' => TranslationOverrides.string(_root.$meta, 'machines.machineList', {}) ?? '机器列表',
      'machines.orderList' => TranslationOverrides.string(_root.$meta, 'machines.orderList', {}) ?? '订单记录',
      'machines.revenueTrend' => TranslationOverrides.string(_root.$meta, 'machines.revenueTrend', {}) ?? '营收趋势',
      'machines.orderVolume' => TranslationOverrides.string(_root.$meta, 'machines.orderVolume', {}) ?? '订单量',
      'machines.productSalesRatio' =>
        TranslationOverrides.string(_root.$meta, 'machines.productSalesRatio', {}) ?? '商品销售占比',
      'machines.machineRevenueComparison' =>
        TranslationOverrides.string(_root.$meta, 'machines.machineRevenueComparison', {}) ?? '机器收益对比',
      'machines.totalRevenue' => TranslationOverrides.string(_root.$meta, 'machines.totalRevenue', {}) ?? '总营收',
      'machines.totalOrders' => TranslationOverrides.string(_root.$meta, 'machines.totalOrders', {}) ?? '总订单数',
      'machines.dailyAvgRevenue' => TranslationOverrides.string(_root.$meta, 'machines.dailyAvgRevenue', {}) ?? '日均营收',
      'machines.growthRate' => TranslationOverrides.string(_root.$meta, 'machines.growthRate', {}) ?? '环比增长率',
      'machines.totalMachines' => TranslationOverrides.string(_root.$meta, 'machines.totalMachines', {}) ?? '总设备数量',
      'machines.noChartData' => TranslationOverrides.string(_root.$meta, 'machines.noChartData', {}) ?? '暂无数据',
      'machines.loading' => TranslationOverrides.string(_root.$meta, 'machines.loading', {}) ?? '加载中',
      'machines.currencyPrefix' => TranslationOverrides.string(_root.$meta, 'machines.currencyPrefix', {}) ?? '¥',
      'machines.emptyState' => TranslationOverrides.string(_root.$meta, 'machines.emptyState', {}) ?? '暂无机器',
      'machines.emptyOrders' => TranslationOverrides.string(_root.$meta, 'machines.emptyOrders', {}) ?? '暂无订单',
      'machines.timePeriod.day' => TranslationOverrides.string(_root.$meta, 'machines.timePeriod.day', {}) ?? '日',
      'machines.timePeriod.week' => TranslationOverrides.string(_root.$meta, 'machines.timePeriod.week', {}) ?? '周',
      'machines.timePeriod.month' => TranslationOverrides.string(_root.$meta, 'machines.timePeriod.month', {}) ?? '月',
      'machines.timePeriod.quarter' =>
        TranslationOverrides.string(_root.$meta, 'machines.timePeriod.quarter', {}) ?? '季度',
      'machines.timePeriod.year' => TranslationOverrides.string(_root.$meta, 'machines.timePeriod.year', {}) ?? '年',
      'machines.total' => TranslationOverrides.string(_root.$meta, 'machines.total', {}) ?? '合计',
      'machines.orders' => TranslationOverrides.string(_root.$meta, 'machines.orders', {}) ?? '单',
      'maintenance.machineList' => TranslationOverrides.string(_root.$meta, 'maintenance.machineList', {}) ?? '维护管理',
      'maintenance.faultCount' => TranslationOverrides.string(_root.$meta, 'maintenance.faultCount', {}) ?? '故障次数',
      'maintenance.lastFaultAt' => TranslationOverrides.string(_root.$meta, 'maintenance.lastFaultAt', {}) ?? '最近故障时间',
      'maintenance.noFaults' => TranslationOverrides.string(_root.$meta, 'maintenance.noFaults', {}) ?? '无故障',
      'maintenance.faultList' => TranslationOverrides.string(_root.$meta, 'maintenance.faultList', {}) ?? '故障记录',
      'maintenance.faultType' => TranslationOverrides.string(_root.$meta, 'maintenance.faultType', {}) ?? '故障类型',
      'maintenance.description' => TranslationOverrides.string(_root.$meta, 'maintenance.description', {}) ?? '描述',
      'maintenance.occurredAt' => TranslationOverrides.string(_root.$meta, 'maintenance.occurredAt', {}) ?? '发生时间',
      'maintenance.pending' => TranslationOverrides.string(_root.$meta, 'maintenance.pending', {}) ?? '待处理',
      'maintenance.resolved' => TranslationOverrides.string(_root.$meta, 'maintenance.resolved', {}) ?? '已解决',
      'maintenance.statusPending' => TranslationOverrides.string(_root.$meta, 'maintenance.statusPending', {}) ?? '待处理',
      'maintenance.statusResolved' =>
        TranslationOverrides.string(_root.$meta, 'maintenance.statusResolved', {}) ?? '已解决',
      'maintenance.noFaultRecords' =>
        TranslationOverrides.string(_root.$meta, 'maintenance.noFaultRecords', {}) ?? '暂无故障记录',
      'maintenance.emptyState' => TranslationOverrides.string(_root.$meta, 'maintenance.emptyState', {}) ?? '暂无机器',
      'maintenance.loadFailed' => TranslationOverrides.string(_root.$meta, 'maintenance.loadFailed', {}) ?? '加载失败',
      'maintenance.retry' => TranslationOverrides.string(_root.$meta, 'maintenance.retry', {}) ?? '重试',
      'navigation.machines' => TranslationOverrides.string(_root.$meta, 'navigation.machines', {}) ?? '代理',
      'navigation.inventory' => TranslationOverrides.string(_root.$meta, 'navigation.inventory', {}) ?? '库存',
      'navigation.maintenance' => TranslationOverrides.string(_root.$meta, 'navigation.maintenance', {}) ?? '运维',
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
      'notifications.title' => TranslationOverrides.string(_root.$meta, 'notifications.title', {}) ?? '消息通知',
      'notifications.markAllRead' =>
        TranslationOverrides.string(_root.$meta, 'notifications.markAllRead', {}) ?? '全部标记为已读',
      'notifications.empty' => TranslationOverrides.string(_root.$meta, 'notifications.empty', {}) ?? '暂无通知',
      'notifications.unread' => TranslationOverrides.string(_root.$meta, 'notifications.unread', {}) ?? '未读消息',
      'notifications.read' => TranslationOverrides.string(_root.$meta, 'notifications.read', {}) ?? '已读消息',
      'notifications.priority.high' =>
        TranslationOverrides.string(_root.$meta, 'notifications.priority.high', {}) ?? '高优先级',
      'notifications.priority.medium' =>
        TranslationOverrides.string(_root.$meta, 'notifications.priority.medium', {}) ?? '普通',
      'notifications.priority.low' =>
        TranslationOverrides.string(_root.$meta, 'notifications.priority.low', {}) ?? '低优先级',
      'profile.title' => TranslationOverrides.string(_root.$meta, 'profile.title', {}) ?? '个人中心',
      'profile.notLoggedIn' => TranslationOverrides.string(_root.$meta, 'profile.notLoggedIn', {}) ?? '未登录',
      'profile.editProfile' => TranslationOverrides.string(_root.$meta, 'profile.editProfile', {}) ?? '编辑资料',
      'profile.logout' => TranslationOverrides.string(_root.$meta, 'profile.logout', {}) ?? '退出登录',
      'profile.favoriteDevices' => TranslationOverrides.string(_root.$meta, 'profile.favoriteDevices', {}) ?? '收藏设备',
      'profile.personalInfo' => TranslationOverrides.string(_root.$meta, 'profile.personalInfo', {}) ?? '个人信息',
      'profile.confirmLogout' => TranslationOverrides.string(_root.$meta, 'profile.confirmLogout', {}) ?? '确认退出',
      'profile.confirmLogoutContent' =>
        TranslationOverrides.string(_root.$meta, 'profile.confirmLogoutContent', {}) ?? '确定要退出登录吗？',
      'profile.clearCacheConfirm' =>
        TranslationOverrides.string(_root.$meta, 'profile.clearCacheConfirm', {}) ?? '确定要清除所有缓存数据吗？',
      'profile.noFavoriteDevices' =>
        TranslationOverrides.string(_root.$meta, 'profile.noFavoriteDevices', {}) ?? '暂无收藏设备',
      'profile.removeFavorite' => TranslationOverrides.string(_root.$meta, 'profile.removeFavorite', {}) ?? '取消收藏',
      'profile.removeFavoriteConfirm' =>
        ({required Object name}) =>
            TranslationOverrides.string(_root.$meta, 'profile.removeFavoriteConfirm', {'name': name}) ??
            '确定要取消收藏"${name}"吗？',
      'profile.appDescription' =>
        TranslationOverrides.string(_root.$meta, 'profile.appDescription', {}) ?? '一个便捷的自动售货机购买应用',
      'profile.version' =>
        ({required Object version}) =>
            TranslationOverrides.string(_root.$meta, 'profile.version', {'version': version}) ?? '版本：${version}',
      'profile.wallet' => TranslationOverrides.string(_root.$meta, 'profile.wallet', {}) ?? '我的钱包',
      'profile.coupon' => TranslationOverrides.string(_root.$meta, 'profile.coupon', {}) ?? '优惠券',
      'profile.feedback' => TranslationOverrides.string(_root.$meta, 'profile.feedback', {}) ?? '问题反馈',
      'profile.cooperation' => TranslationOverrides.string(_root.$meta, 'profile.cooperation', {}) ?? '合作商加盟',
      'profile.about' => TranslationOverrides.string(_root.$meta, 'profile.about', {}) ?? '关于我们',
      'profile.settings' => TranslationOverrides.string(_root.$meta, 'profile.settings', {}) ?? '设置',
      'profile.gender.male' => TranslationOverrides.string(_root.$meta, 'profile.gender.male', {}) ?? '男',
      'profile.gender.female' => TranslationOverrides.string(_root.$meta, 'profile.gender.female', {}) ?? '女',
      'profile.gender.unknown' => TranslationOverrides.string(_root.$meta, 'profile.gender.unknown', {}) ?? '保密',
      'profile.info.basic' => TranslationOverrides.string(_root.$meta, 'profile.info.basic', {}) ?? '基本信息',
      'profile.info.other' => TranslationOverrides.string(_root.$meta, 'profile.info.other', {}) ?? '其他信息',
      'profile.info.phone' => TranslationOverrides.string(_root.$meta, 'profile.info.phone', {}) ?? '手机号',
      'profile.info.gender' => TranslationOverrides.string(_root.$meta, 'profile.info.gender', {}) ?? '性别',
      'profile.info.birthday' => TranslationOverrides.string(_root.$meta, 'profile.info.birthday', {}) ?? '生日',
      'profile.info.email' => TranslationOverrides.string(_root.$meta, 'profile.info.email', {}) ?? '邮箱',
      'profile.info.notSet' => TranslationOverrides.string(_root.$meta, 'profile.info.notSet', {}) ?? '未设置',
      'profile.avatar.clickToChange' =>
        TranslationOverrides.string(_root.$meta, 'profile.avatar.clickToChange', {}) ?? '点击更换头像',
      'profile.avatar.uploading' =>
        TranslationOverrides.string(_root.$meta, 'profile.avatar.uploading', {}) ?? '头像上传功能开发中',
      'profile.saveSuccess' => TranslationOverrides.string(_root.$meta, 'profile.saveSuccess', {}) ?? '保存成功',
      'profile.saveFailed' =>
        ({required Object error}) =>
            TranslationOverrides.string(_root.$meta, 'profile.saveFailed', {'error': error}) ?? '保存失败: ${error}',
      'profile.saveInfo' => TranslationOverrides.string(_root.$meta, 'profile.saveInfo', {}) ?? '保存信息',
      'profile.walletBalance' => TranslationOverrides.string(_root.$meta, 'profile.walletBalance', {}) ?? '钱包余额',
      'profile.coin' => TranslationOverrides.string(_root.$meta, 'profile.coin', {}) ?? '积分',
      'profile.couponCount' => TranslationOverrides.string(_root.$meta, 'profile.couponCount', {}) ?? '优惠券',
      'profile.pointsMall' => TranslationOverrides.string(_root.$meta, 'profile.pointsMall', {}) ?? '积分兑换',
      'profile.walletPage.title' => TranslationOverrides.string(_root.$meta, 'profile.walletPage.title', {}) ?? '钱包',
      'profile.walletPage.topUp' => TranslationOverrides.string(_root.$meta, 'profile.walletPage.topUp', {}) ?? '充值',
      'profile.walletPage.balance' =>
        TranslationOverrides.string(_root.$meta, 'profile.walletPage.balance', {}) ?? '钱包余额',
      'profile.walletPage.selectAmount' =>
        TranslationOverrides.string(_root.$meta, 'profile.walletPage.selectAmount', {}) ?? '选择充值金额',
      'profile.walletPage.rule' => TranslationOverrides.string(_root.$meta, 'profile.walletPage.rule', {}) ?? '规则说明',
      'profile.walletPage.ruleDesc' =>
        TranslationOverrides.string(_root.$meta, 'profile.walletPage.ruleDesc', {}) ?? '充值部分套餐可获取积分，自选金额充值不获取积分',
      'profile.walletPage.customAmount' =>
        TranslationOverrides.string(_root.$meta, 'profile.walletPage.customAmount', {}) ?? '自选金额',
      'profile.walletPage.customAmountHint' =>
        TranslationOverrides.string(_root.$meta, 'profile.walletPage.customAmountHint', {}) ?? '仅限500元以上充值',
      'profile.walletPage.realPay' =>
        ({required Object amount}) =>
            TranslationOverrides.string(_root.$meta, 'profile.walletPage.realPay', {'amount': amount}) ??
            '实付¥${amount}',
      'profile.walletPage.bonus' =>
        ({required Object amount}) =>
            TranslationOverrides.string(_root.$meta, 'profile.walletPage.bonus', {'amount': amount}) ?? '送${amount}积分',
      'profile.walletPage.noBonus' =>
        TranslationOverrides.string(_root.$meta, 'profile.walletPage.noBonus', {}) ?? '无积分',
      'profile.walletPage.history' =>
        TranslationOverrides.string(_root.$meta, 'profile.walletPage.history', {}) ?? '充值记录',
      'profile.walletPage.historyCount' =>
        ({required Object count}) =>
            TranslationOverrides.string(_root.$meta, 'profile.walletPage.historyCount', {'count': count}) ??
            '共${count}笔',
      'profile.walletPage.noHistory' =>
        TranslationOverrides.string(_root.$meta, 'profile.walletPage.noHistory', {}) ?? '暂无充值记录',
      'profile.walletPage.rules.title' =>
        TranslationOverrides.string(_root.$meta, 'profile.walletPage.rules.title', {}) ?? '钱包规则',
      'profile.walletPage.rules.headerTitle' =>
        TranslationOverrides.string(_root.$meta, 'profile.walletPage.rules.headerTitle', {}) ?? '钱包充值说明',
      'profile.walletPage.rules.headerDesc' =>
        TranslationOverrides.string(_root.$meta, 'profile.walletPage.rules.headerDesc', {}) ?? '请仔细阅读规则后进行充值',
      'profile.walletPage.rules.rechargeRules.title' =>
        TranslationOverrides.string(_root.$meta, 'profile.walletPage.rules.rechargeRules.title', {}) ?? '充值规则',
      'profile.walletPage.rules.rechargeRules.items.0' =>
        TranslationOverrides.string(_root.$meta, 'profile.walletPage.rules.rechargeRules.items.0', {}) ?? '单次充值最低100元',
      'profile.walletPage.rules.rechargeRules.items.1' =>
        TranslationOverrides.string(_root.$meta, 'profile.walletPage.rules.rechargeRules.items.1', {}) ??
            '充值金额单次有100000元上限',
      'profile.walletPage.rules.rechargeRules.items.2' =>
        TranslationOverrides.string(_root.$meta, 'profile.walletPage.rules.rechargeRules.items.2', {}) ?? '充值成功后立即到账',
      'profile.walletPage.rules.rechargeRules.items.3' =>
        TranslationOverrides.string(_root.$meta, 'profile.walletPage.rules.rechargeRules.items.3', {}) ??
            '充值金额可用于购买商品和支付订单',
      'profile.walletPage.rules.rechargeRules.items.4' =>
        TranslationOverrides.string(_root.$meta, 'profile.walletPage.rules.rechargeRules.items.4', {}) ??
            '充值部分套餐可获取积分，自选金额充值只可获取400积分',
      'profile.walletPage.rules.usageInstructions.title' =>
        TranslationOverrides.string(_root.$meta, 'profile.walletPage.rules.usageInstructions.title', {}) ?? '使用说明',
      'profile.walletPage.rules.usageInstructions.items.0' =>
        TranslationOverrides.string(_root.$meta, 'profile.walletPage.rules.usageInstructions.items.0', {}) ??
            '钱包余额可用于支付订单',
      'profile.walletPage.rules.usageInstructions.items.1' =>
        TranslationOverrides.string(_root.$meta, 'profile.walletPage.rules.usageInstructions.items.1', {}) ??
            '余额不足时可选择充值或使用其他支付方式',
      'profile.walletPage.rules.usageInstructions.items.2' =>
        TranslationOverrides.string(_root.$meta, 'profile.walletPage.rules.usageInstructions.items.2', {}) ??
            '充值记录永久保存，可随时查看',
      'profile.walletPage.rules.usageInstructions.items.3' =>
        TranslationOverrides.string(_root.$meta, 'profile.walletPage.rules.usageInstructions.items.3', {}) ??
            '如有问题请联系客服处理',
      'settings.title' => TranslationOverrides.string(_root.$meta, 'settings.title', {}) ?? '设置',
      'settings.general' => TranslationOverrides.string(_root.$meta, 'settings.general', {}) ?? '通用',
      'settings.theme' => TranslationOverrides.string(_root.$meta, 'settings.theme', {}) ?? '主题模式',
      'settings.themeLight' => TranslationOverrides.string(_root.$meta, 'settings.themeLight', {}) ?? '浅色',
      'settings.themeDark' => TranslationOverrides.string(_root.$meta, 'settings.themeDark', {}) ?? '深色',
      'settings.themeSystem' => TranslationOverrides.string(_root.$meta, 'settings.themeSystem', {}) ?? '跟随系统',
      'settings.language' => TranslationOverrides.string(_root.$meta, 'settings.language', {}) ?? '语言',
      'settings.checkUpdate' => TranslationOverrides.string(_root.$meta, 'settings.checkUpdate', {}) ?? '检查更新',
      'settings.clearCache' => TranslationOverrides.string(_root.$meta, 'settings.clearCache', {}) ?? '清除缓存',
      'settings.about' => TranslationOverrides.string(_root.$meta, 'settings.about', {}) ?? '关于',
      'settings.deviceInfo' => TranslationOverrides.string(_root.$meta, 'settings.deviceInfo', {}) ?? '设备信息',
      'settings.aboutUs' => TranslationOverrides.string(_root.$meta, 'settings.aboutUs', {}) ?? '关于我们',
      'settings.checkingUpdate' =>
        TranslationOverrides.string(_root.$meta, 'settings.checkingUpdate', {}) ?? '正在检查更新...',
      'settings.cacheCleared' => TranslationOverrides.string(_root.$meta, 'settings.cacheCleared', {}) ?? '缓存已清除',
      'settings.english' => TranslationOverrides.string(_root.$meta, 'settings.english', {}) ?? '英语',
      'settings.chinese' => TranslationOverrides.string(_root.$meta, 'settings.chinese', {}) ?? '简体中文',
      'settings.traditionalChinese' =>
        TranslationOverrides.string(_root.$meta, 'settings.traditionalChinese', {}) ?? '繁体中文',
      'settings.themeScheme' => TranslationOverrides.string(_root.$meta, 'settings.themeScheme', {}) ?? '主题配色',
      'settings.schemes.shadOrange' =>
        TranslationOverrides.string(_root.$meta, 'settings.schemes.shadOrange', {}) ?? '活力橙 (ShadOrange)',
      'settings.schemes.shadGreen' =>
        TranslationOverrides.string(_root.$meta, 'settings.schemes.shadGreen', {}) ?? '自然绿 (ShadGreen)',
      'settings.schemes.bahamaBlue' =>
        TranslationOverrides.string(_root.$meta, 'settings.schemes.bahamaBlue', {}) ?? '巴哈马蓝 (BahamaBlue)',
      'settings.schemes.damask' =>
        TranslationOverrides.string(_root.$meta, 'settings.schemes.damask', {}) ?? '锦缎红 (Damask)',
      'settings.appName' => TranslationOverrides.string(_root.$meta, 'settings.appName', {}) ?? '应用名称',
      'settings.packageName' => TranslationOverrides.string(_root.$meta, 'settings.packageName', {}) ?? '包名',
      'settings.versionName' => TranslationOverrides.string(_root.$meta, 'settings.versionName', {}) ?? '版本号',
      'settings.buildNumber' => TranslationOverrides.string(_root.$meta, 'settings.buildNumber', {}) ?? '构建号',
      'settings.copyright' =>
        TranslationOverrides.string(_root.$meta, 'settings.copyright', {}) ?? '© 2024 Lunchbox Team',
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
      'welcome_gift.title' => TranslationOverrides.string(_root.$meta, 'welcome_gift.title', {}) ?? '新人礼包',
      _ => null,
    };
  }
}
