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
  late final _TranslationsFeedbackZhTw feedback = _TranslationsFeedbackZhTw._(_root);
  @override
  late final _TranslationsInventoryZhTw inventory = _TranslationsInventoryZhTw._(_root);
  @override
  late final _TranslationsMachinesZhTw machines = _TranslationsMachinesZhTw._(_root);
  @override
  late final _TranslationsMaintenanceZhTw maintenance = _TranslationsMaintenanceZhTw._(_root);
  @override
  late final _TranslationsNavigationZhTw navigation = _TranslationsNavigationZhTw._(_root);
  @override
  late final _TranslationsNetworkZhTw network = _TranslationsNetworkZhTw._(_root);
  @override
  late final _TranslationsNotificationsZhTw notifications = _TranslationsNotificationsZhTw._(_root);
  @override
  late final _TranslationsProfileZhTw profile = _TranslationsProfileZhTw._(_root);
  @override
  late final _TranslationsSettingsZhTw settings = _TranslationsSettingsZhTw._(_root);
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

// Path: feedback
class _TranslationsFeedbackZhTw extends TranslationsFeedbackZhCn {
  _TranslationsFeedbackZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

  final TranslationsZhTw _root; // ignore: unused_field

  // Translations
  @override
  String get title => TranslationOverrides.string(_root.$meta, 'feedback.title', {}) ?? '問題反饋';
  @override
  String get subtitle => TranslationOverrides.string(_root.$meta, 'feedback.subtitle', {}) ?? '您的反饋是我們進步的動力';
  @override
  String get selectType => TranslationOverrides.string(_root.$meta, 'feedback.selectType', {}) ?? '選擇反饋類型';
  @override
  String get errorReport => TranslationOverrides.string(_root.$meta, 'feedback.errorReport', {}) ?? '錯誤報告';
  @override
  String get suggestion => TranslationOverrides.string(_root.$meta, 'feedback.suggestion', {}) ?? '建議';
  @override
  String get complaint => TranslationOverrides.string(_root.$meta, 'feedback.complaint', {}) ?? '投訴';
  @override
  String get other => TranslationOverrides.string(_root.$meta, 'feedback.other', {}) ?? '其他';
  @override
  String get description => TranslationOverrides.string(_root.$meta, 'feedback.description', {}) ?? '問題描述';
  @override
  String get titleHint => TranslationOverrides.string(_root.$meta, 'feedback.titleHint', {}) ?? '請輸入問題標題 (必填)';
  @override
  String get contentHint =>
      TranslationOverrides.string(_root.$meta, 'feedback.contentHint', {}) ?? '請詳細描述您遇到的問題或建議 (必填)';
  @override
  String get uploadScreenshot =>
      TranslationOverrides.string(_root.$meta, 'feedback.uploadScreenshot', {}) ?? '上傳截圖 (可選)';
  @override
  String get addImage => TranslationOverrides.string(_root.$meta, 'feedback.addImage', {}) ?? '添加圖片';
  @override
  String get uploadLimitHint =>
      TranslationOverrides.string(_root.$meta, 'feedback.uploadLimitHint', {}) ?? '最多可上傳3張圖片，每張不超過2MB，支持jpg、png格式';
  @override
  String get contactOptional => TranslationOverrides.string(_root.$meta, 'feedback.contactOptional', {}) ?? '聯繫方式 (可選)';
  @override
  String get contactInputHint =>
      TranslationOverrides.string(_root.$meta, 'feedback.contactInputHint', {}) ?? '請輸入您的手機號或郵箱，方便我們聯繫您';
  @override
  String get submit => TranslationOverrides.string(_root.$meta, 'feedback.submit', {}) ?? '提交反饋';
  @override
  String get submitSuccess => TranslationOverrides.string(_root.$meta, 'feedback.submitSuccess', {}) ?? '反饋提交成功，感謝您的支持';
  @override
  String get submitFailed => TranslationOverrides.string(_root.$meta, 'feedback.submitFailed', {}) ?? '反饋提交失敗，請稍後重試';
}

// Path: inventory
class _TranslationsInventoryZhTw extends TranslationsInventoryZhCn {
  _TranslationsInventoryZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

  final TranslationsZhTw _root; // ignore: unused_field

  // Translations
  @override
  String get machineList => TranslationOverrides.string(_root.$meta, 'inventory.machineList', {}) ?? '補貨管理';
  @override
  String get totalSlots => TranslationOverrides.string(_root.$meta, 'inventory.totalSlots', {}) ?? '總貨道';
  @override
  String get lowStockSlots => TranslationOverrides.string(_root.$meta, 'inventory.lowStockSlots', {}) ?? '低庫存';
  @override
  String get emptySlots => TranslationOverrides.string(_root.$meta, 'inventory.emptySlots', {}) ?? '空貨道';
  @override
  String get slotList => TranslationOverrides.string(_root.$meta, 'inventory.slotList', {}) ?? '貨道管理';
  @override
  String get slotNumber => TranslationOverrides.string(_root.$meta, 'inventory.slotNumber', {}) ?? '貨道編號';
  @override
  String get productName => TranslationOverrides.string(_root.$meta, 'inventory.productName', {}) ?? '商品名稱';
  @override
  String get quantity => TranslationOverrides.string(_root.$meta, 'inventory.quantity', {}) ?? '數量';
  @override
  String get lowStock => TranslationOverrides.string(_root.$meta, 'inventory.lowStock', {}) ?? '低庫存';
  @override
  String get empty => TranslationOverrides.string(_root.$meta, 'inventory.empty', {}) ?? '空貨道';
  @override
  String get editQuantity => TranslationOverrides.string(_root.$meta, 'inventory.editQuantity', {}) ?? '編輯數量';
  @override
  String get confirm => TranslationOverrides.string(_root.$meta, 'inventory.confirm', {}) ?? '確認';
  @override
  String get cancel => TranslationOverrides.string(_root.$meta, 'inventory.cancel', {}) ?? '取消';
  @override
  String get updateSuccess => TranslationOverrides.string(_root.$meta, 'inventory.updateSuccess', {}) ?? '更新成功';
  @override
  String get updateFailed => TranslationOverrides.string(_root.$meta, 'inventory.updateFailed', {}) ?? '更新失敗';
  @override
  String get quantityMustBeNonNegative =>
      TranslationOverrides.string(_root.$meta, 'inventory.quantityMustBeNonNegative', {}) ?? '數量必須為非負整數';
  @override
  String get emptyState => TranslationOverrides.string(_root.$meta, 'inventory.emptyState', {}) ?? '暫無貨道';
}

// Path: machines
class _TranslationsMachinesZhTw extends TranslationsMachinesZhCn {
  _TranslationsMachinesZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

  final TranslationsZhTw _root; // ignore: unused_field

  // Translations
  @override
  String get dashboard => TranslationOverrides.string(_root.$meta, 'machines.dashboard', {}) ?? '營運儀表板';
  @override
  String get machineList => TranslationOverrides.string(_root.$meta, 'machines.machineList', {}) ?? '機器列表';
  @override
  String get orderList => TranslationOverrides.string(_root.$meta, 'machines.orderList', {}) ?? '訂單記錄';
  @override
  String get revenueTrend => TranslationOverrides.string(_root.$meta, 'machines.revenueTrend', {}) ?? '營收趨勢';
  @override
  String get orderVolume => TranslationOverrides.string(_root.$meta, 'machines.orderVolume', {}) ?? '訂單量';
  @override
  String get productSalesRatio =>
      TranslationOverrides.string(_root.$meta, 'machines.productSalesRatio', {}) ?? '商品銷售佔比';
  @override
  String get machineRevenueComparison =>
      TranslationOverrides.string(_root.$meta, 'machines.machineRevenueComparison', {}) ?? '機器收益對比';
  @override
  String get totalRevenue => TranslationOverrides.string(_root.$meta, 'machines.totalRevenue', {}) ?? '總營收';
  @override
  String get totalOrders => TranslationOverrides.string(_root.$meta, 'machines.totalOrders', {}) ?? '總訂單數';
  @override
  String get dailyAvgRevenue => TranslationOverrides.string(_root.$meta, 'machines.dailyAvgRevenue', {}) ?? '日均營收';
  @override
  String get growthRate => TranslationOverrides.string(_root.$meta, 'machines.growthRate', {}) ?? '環比增長率';
  @override
  String get totalMachines => TranslationOverrides.string(_root.$meta, 'machines.totalMachines', {}) ?? '總設備數量';
  @override
  String get noChartData => TranslationOverrides.string(_root.$meta, 'machines.noChartData', {}) ?? '暫無數據';
  @override
  String get loading => TranslationOverrides.string(_root.$meta, 'machines.loading', {}) ?? '載入中';
  @override
  String get currencyPrefix => TranslationOverrides.string(_root.$meta, 'machines.currencyPrefix', {}) ?? '¥';
  @override
  String get emptyState => TranslationOverrides.string(_root.$meta, 'machines.emptyState', {}) ?? '暫無機器';
  @override
  String get emptyOrders => TranslationOverrides.string(_root.$meta, 'machines.emptyOrders', {}) ?? '暫無訂單';
  @override
  late final _TranslationsMachinesTimePeriodZhTw timePeriod = _TranslationsMachinesTimePeriodZhTw._(_root);
  @override
  String get total => TranslationOverrides.string(_root.$meta, 'machines.total', {}) ?? '合計';
  @override
  String get orders => TranslationOverrides.string(_root.$meta, 'machines.orders', {}) ?? '單';
}

// Path: maintenance
class _TranslationsMaintenanceZhTw extends TranslationsMaintenanceZhCn {
  _TranslationsMaintenanceZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

  final TranslationsZhTw _root; // ignore: unused_field

  // Translations
  @override
  String get machineList => TranslationOverrides.string(_root.$meta, 'maintenance.machineList', {}) ?? '維護管理';
  @override
  String get faultCount => TranslationOverrides.string(_root.$meta, 'maintenance.faultCount', {}) ?? '故障次數';
  @override
  String get lastFaultAt => TranslationOverrides.string(_root.$meta, 'maintenance.lastFaultAt', {}) ?? '最近故障時間';
  @override
  String get noFaults => TranslationOverrides.string(_root.$meta, 'maintenance.noFaults', {}) ?? '無故障';
  @override
  String get faultList => TranslationOverrides.string(_root.$meta, 'maintenance.faultList', {}) ?? '故障記錄';
  @override
  String get faultType => TranslationOverrides.string(_root.$meta, 'maintenance.faultType', {}) ?? '故障類型';
  @override
  String get description => TranslationOverrides.string(_root.$meta, 'maintenance.description', {}) ?? '描述';
  @override
  String get occurredAt => TranslationOverrides.string(_root.$meta, 'maintenance.occurredAt', {}) ?? '發生時間';
  @override
  String get pending => TranslationOverrides.string(_root.$meta, 'maintenance.pending', {}) ?? '待處理';
  @override
  String get resolved => TranslationOverrides.string(_root.$meta, 'maintenance.resolved', {}) ?? '已解決';
  @override
  String get statusPending => TranslationOverrides.string(_root.$meta, 'maintenance.statusPending', {}) ?? '待處理';
  @override
  String get statusResolved => TranslationOverrides.string(_root.$meta, 'maintenance.statusResolved', {}) ?? '已解決';
  @override
  String get noFaultRecords => TranslationOverrides.string(_root.$meta, 'maintenance.noFaultRecords', {}) ?? '暫無故障記錄';
  @override
  String get emptyState => TranslationOverrides.string(_root.$meta, 'maintenance.emptyState', {}) ?? '暫無機器';
  @override
  String get loadFailed => TranslationOverrides.string(_root.$meta, 'maintenance.loadFailed', {}) ?? '載入失敗';
  @override
  String get retry => TranslationOverrides.string(_root.$meta, 'maintenance.retry', {}) ?? '重試';
}

// Path: navigation
class _TranslationsNavigationZhTw extends TranslationsNavigationZhCn {
  _TranslationsNavigationZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

  final TranslationsZhTw _root; // ignore: unused_field

  // Translations
  @override
  String get machines => TranslationOverrides.string(_root.$meta, 'navigation.machines', {}) ?? '代理';
  @override
  String get inventory => TranslationOverrides.string(_root.$meta, 'navigation.inventory', {}) ?? '庫存';
  @override
  String get maintenance => TranslationOverrides.string(_root.$meta, 'navigation.maintenance', {}) ?? '維護';
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

// Path: notifications
class _TranslationsNotificationsZhTw extends TranslationsNotificationsZhCn {
  _TranslationsNotificationsZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

  final TranslationsZhTw _root; // ignore: unused_field

  // Translations
  @override
  String get title => TranslationOverrides.string(_root.$meta, 'notifications.title', {}) ?? '消息通知';
  @override
  String get markAllRead => TranslationOverrides.string(_root.$meta, 'notifications.markAllRead', {}) ?? '全部標記为已讀';
  @override
  String get empty => TranslationOverrides.string(_root.$meta, 'notifications.empty', {}) ?? '暫無通知';
  @override
  String get unread => TranslationOverrides.string(_root.$meta, 'notifications.unread', {}) ?? '未讀消息';
  @override
  String get read => TranslationOverrides.string(_root.$meta, 'notifications.read', {}) ?? '已讀消息';
  @override
  late final _TranslationsNotificationsPriorityZhTw priority = _TranslationsNotificationsPriorityZhTw._(_root);
}

// Path: profile
class _TranslationsProfileZhTw extends TranslationsProfileZhCn {
  _TranslationsProfileZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

  final TranslationsZhTw _root; // ignore: unused_field

  // Translations
  @override
  String get title => TranslationOverrides.string(_root.$meta, 'profile.title', {}) ?? '用戶中心';
  @override
  String get notLoggedIn => TranslationOverrides.string(_root.$meta, 'profile.notLoggedIn', {}) ?? '未登入';
  @override
  String get editProfile => TranslationOverrides.string(_root.$meta, 'profile.editProfile', {}) ?? '編輯資料';
  @override
  String get logout => TranslationOverrides.string(_root.$meta, 'profile.logout', {}) ?? '登出';
  @override
  String get favoriteDevices => TranslationOverrides.string(_root.$meta, 'profile.favoriteDevices', {}) ?? '收藏設備';
  @override
  String get personalInfo => TranslationOverrides.string(_root.$meta, 'profile.personalInfo', {}) ?? '個人資訊';
  @override
  String get confirmLogout => TranslationOverrides.string(_root.$meta, 'profile.confirmLogout', {}) ?? '確認登出';
  @override
  String get confirmLogoutContent =>
      TranslationOverrides.string(_root.$meta, 'profile.confirmLogoutContent', {}) ?? '確定要登出嗎？';
  @override
  String get clearCacheConfirm =>
      TranslationOverrides.string(_root.$meta, 'profile.clearCacheConfirm', {}) ?? '確定要清除所有快取數據嗎？';
  @override
  String get noFavoriteDevices => TranslationOverrides.string(_root.$meta, 'profile.noFavoriteDevices', {}) ?? '暫無收藏設備';
  @override
  String get removeFavorite => TranslationOverrides.string(_root.$meta, 'profile.removeFavorite', {}) ?? '取消收藏';
  @override
  String removeFavoriteConfirm({required Object name}) =>
      TranslationOverrides.string(_root.$meta, 'profile.removeFavoriteConfirm', {'name': name}) ?? '確定要取消收藏"${name}"嗎？';
  @override
  String get appDescription =>
      TranslationOverrides.string(_root.$meta, 'profile.appDescription', {}) ?? '一個便捷的自動售貨機購買應用';
  @override
  String version({required Object version}) =>
      TranslationOverrides.string(_root.$meta, 'profile.version', {'version': version}) ?? '版本：${version}';
  @override
  String get wallet => TranslationOverrides.string(_root.$meta, 'profile.wallet', {}) ?? '我的錢包';
  @override
  String get coupon => TranslationOverrides.string(_root.$meta, 'profile.coupon', {}) ?? '優惠券';
  @override
  String get feedback => TranslationOverrides.string(_root.$meta, 'profile.feedback', {}) ?? '問題反饋';
  @override
  String get cooperation => TranslationOverrides.string(_root.$meta, 'profile.cooperation', {}) ?? '合作商加盟';
  @override
  String get about => TranslationOverrides.string(_root.$meta, 'profile.about', {}) ?? '關於我們';
  @override
  String get settings => TranslationOverrides.string(_root.$meta, 'profile.settings', {}) ?? '設置';
  @override
  late final _TranslationsProfileGenderZhTw gender = _TranslationsProfileGenderZhTw._(_root);
  @override
  late final _TranslationsProfileInfoZhTw info = _TranslationsProfileInfoZhTw._(_root);
  @override
  late final _TranslationsProfileAvatarZhTw avatar = _TranslationsProfileAvatarZhTw._(_root);
  @override
  String get saveSuccess => TranslationOverrides.string(_root.$meta, 'profile.saveSuccess', {}) ?? '保存成功';
  @override
  String saveFailed({required Object error}) =>
      TranslationOverrides.string(_root.$meta, 'profile.saveFailed', {'error': error}) ?? '保存失敗: ${error}';
  @override
  String get saveInfo => TranslationOverrides.string(_root.$meta, 'profile.saveInfo', {}) ?? '保存信息';
  @override
  String get walletBalance => TranslationOverrides.string(_root.$meta, 'profile.walletBalance', {}) ?? '錢包餘額';
  @override
  String get coin => TranslationOverrides.string(_root.$meta, 'profile.coin', {}) ?? '積分';
  @override
  String get couponCount => TranslationOverrides.string(_root.$meta, 'profile.couponCount', {}) ?? '優惠券';
  @override
  String get pointsMall => TranslationOverrides.string(_root.$meta, 'profile.pointsMall', {}) ?? '積分兌換';
}

// Path: settings
class _TranslationsSettingsZhTw extends TranslationsSettingsZhCn {
  _TranslationsSettingsZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

  final TranslationsZhTw _root; // ignore: unused_field

  // Translations
  @override
  String get title => TranslationOverrides.string(_root.$meta, 'settings.title', {}) ?? '設定';
  @override
  String get general => TranslationOverrides.string(_root.$meta, 'settings.general', {}) ?? '通用';
  @override
  String get language => TranslationOverrides.string(_root.$meta, 'settings.language', {}) ?? '語言';
  @override
  String get checkUpdate => TranslationOverrides.string(_root.$meta, 'settings.checkUpdate', {}) ?? '檢查更新';
  @override
  String get clearCache => TranslationOverrides.string(_root.$meta, 'settings.clearCache', {}) ?? '清除快取';
  @override
  String get about => TranslationOverrides.string(_root.$meta, 'settings.about', {}) ?? '關於';
  @override
  String get deviceInfo => TranslationOverrides.string(_root.$meta, 'settings.deviceInfo', {}) ?? '設備資訊';
  @override
  String get aboutUs => TranslationOverrides.string(_root.$meta, 'settings.aboutUs', {}) ?? '關於我們';
  @override
  String get checkingUpdate => TranslationOverrides.string(_root.$meta, 'settings.checkingUpdate', {}) ?? '正在檢查更新...';
  @override
  String get cacheCleared => TranslationOverrides.string(_root.$meta, 'settings.cacheCleared', {}) ?? '快取已清除';
  @override
  String get english => TranslationOverrides.string(_root.$meta, 'settings.english', {}) ?? '英語';
  @override
  String get chinese => TranslationOverrides.string(_root.$meta, 'settings.chinese', {}) ?? '簡體中文';
  @override
  String get traditionalChinese =>
      TranslationOverrides.string(_root.$meta, 'settings.traditionalChinese', {}) ?? '繁體中文';
  @override
  String get theme => TranslationOverrides.string(_root.$meta, 'settings.theme', {}) ?? '主題模式';
  @override
  String get themeScheme => TranslationOverrides.string(_root.$meta, 'settings.themeScheme', {}) ?? '主題配色';
  @override
  late final _TranslationsSettingsSchemesZhTw schemes = _TranslationsSettingsSchemesZhTw._(_root);
  @override
  String get appName => TranslationOverrides.string(_root.$meta, 'settings.appName', {}) ?? '應用名稱';
  @override
  String get packageName => TranslationOverrides.string(_root.$meta, 'settings.packageName', {}) ?? '包名';
  @override
  String get versionName => TranslationOverrides.string(_root.$meta, 'settings.versionName', {}) ?? '版本號';
  @override
  String get buildNumber => TranslationOverrides.string(_root.$meta, 'settings.buildNumber', {}) ?? '構建號';
  @override
  String get copyright => TranslationOverrides.string(_root.$meta, 'settings.copyright', {}) ?? '© 2024 Lunchbox Team';
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

// Path: machines.timePeriod
class _TranslationsMachinesTimePeriodZhTw extends TranslationsMachinesTimePeriodZhCn {
  _TranslationsMachinesTimePeriodZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

  final TranslationsZhTw _root; // ignore: unused_field

  // Translations
  @override
  String get day => TranslationOverrides.string(_root.$meta, 'machines.timePeriod.day', {}) ?? '日';
  @override
  String get week => TranslationOverrides.string(_root.$meta, 'machines.timePeriod.week', {}) ?? '週';
  @override
  String get month => TranslationOverrides.string(_root.$meta, 'machines.timePeriod.month', {}) ?? '月';
  @override
  String get quarter => TranslationOverrides.string(_root.$meta, 'machines.timePeriod.quarter', {}) ?? '季度';
  @override
  String get year => TranslationOverrides.string(_root.$meta, 'machines.timePeriod.year', {}) ?? '年';
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

// Path: notifications.priority
class _TranslationsNotificationsPriorityZhTw extends TranslationsNotificationsPriorityZhCn {
  _TranslationsNotificationsPriorityZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

  final TranslationsZhTw _root; // ignore: unused_field

  // Translations
  @override
  String get high => TranslationOverrides.string(_root.$meta, 'notifications.priority.high', {}) ?? '高優先級';
  @override
  String get medium => TranslationOverrides.string(_root.$meta, 'notifications.priority.medium', {}) ?? '普通';
  @override
  String get low => TranslationOverrides.string(_root.$meta, 'notifications.priority.low', {}) ?? '低優先級';
}

// Path: profile.gender
class _TranslationsProfileGenderZhTw extends TranslationsProfileGenderZhCn {
  _TranslationsProfileGenderZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

  final TranslationsZhTw _root; // ignore: unused_field

  // Translations
  @override
  String get male => TranslationOverrides.string(_root.$meta, 'profile.gender.male', {}) ?? '男';
  @override
  String get female => TranslationOverrides.string(_root.$meta, 'profile.gender.female', {}) ?? '女';
  @override
  String get unknown => TranslationOverrides.string(_root.$meta, 'profile.gender.unknown', {}) ?? '保密';
}

// Path: profile.info
class _TranslationsProfileInfoZhTw extends TranslationsProfileInfoZhCn {
  _TranslationsProfileInfoZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

  final TranslationsZhTw _root; // ignore: unused_field

  // Translations
  @override
  String get basic => TranslationOverrides.string(_root.$meta, 'profile.info.basic', {}) ?? '基本信息';
  @override
  String get other => TranslationOverrides.string(_root.$meta, 'profile.info.other', {}) ?? '其他信息';
  @override
  String get phone => TranslationOverrides.string(_root.$meta, 'profile.info.phone', {}) ?? '手機號';
  @override
  String get gender => TranslationOverrides.string(_root.$meta, 'profile.info.gender', {}) ?? '性別';
  @override
  String get birthday => TranslationOverrides.string(_root.$meta, 'profile.info.birthday', {}) ?? '生日';
  @override
  String get email => TranslationOverrides.string(_root.$meta, 'profile.info.email', {}) ?? '郵箱';
  @override
  String get notSet => TranslationOverrides.string(_root.$meta, 'profile.info.notSet', {}) ?? '未設置';
}

// Path: profile.avatar
class _TranslationsProfileAvatarZhTw extends TranslationsProfileAvatarZhCn {
  _TranslationsProfileAvatarZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

  final TranslationsZhTw _root; // ignore: unused_field

  // Translations
  @override
  String get clickToChange => TranslationOverrides.string(_root.$meta, 'profile.avatar.clickToChange', {}) ?? '點擊更換頭像';
  @override
  String get uploading => TranslationOverrides.string(_root.$meta, 'profile.avatar.uploading', {}) ?? '頭像上傳功能開發中';
}

// Path: settings.schemes
class _TranslationsSettingsSchemesZhTw extends TranslationsSettingsSchemesZhCn {
  _TranslationsSettingsSchemesZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

  final TranslationsZhTw _root; // ignore: unused_field

  // Translations
  @override
  String get shadOrange =>
      TranslationOverrides.string(_root.$meta, 'settings.schemes.shadOrange', {}) ?? '活力橙 (ShadOrange)';
  @override
  String get shadGreen =>
      TranslationOverrides.string(_root.$meta, 'settings.schemes.shadGreen', {}) ?? '自然綠 (ShadGreen)';
  @override
  String get bahamaBlue =>
      TranslationOverrides.string(_root.$meta, 'settings.schemes.bahamaBlue', {}) ?? '巴哈馬藍 (BahamaBlue)';
  @override
  String get damask => TranslationOverrides.string(_root.$meta, 'settings.schemes.damask', {}) ?? '錦緞紅 (Damask)';
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
      'feedback.title' => TranslationOverrides.string(_root.$meta, 'feedback.title', {}) ?? '問題反饋',
      'feedback.subtitle' => TranslationOverrides.string(_root.$meta, 'feedback.subtitle', {}) ?? '您的反饋是我們進步的動力',
      'feedback.selectType' => TranslationOverrides.string(_root.$meta, 'feedback.selectType', {}) ?? '選擇反饋類型',
      'feedback.errorReport' => TranslationOverrides.string(_root.$meta, 'feedback.errorReport', {}) ?? '錯誤報告',
      'feedback.suggestion' => TranslationOverrides.string(_root.$meta, 'feedback.suggestion', {}) ?? '建議',
      'feedback.complaint' => TranslationOverrides.string(_root.$meta, 'feedback.complaint', {}) ?? '投訴',
      'feedback.other' => TranslationOverrides.string(_root.$meta, 'feedback.other', {}) ?? '其他',
      'feedback.description' => TranslationOverrides.string(_root.$meta, 'feedback.description', {}) ?? '問題描述',
      'feedback.titleHint' => TranslationOverrides.string(_root.$meta, 'feedback.titleHint', {}) ?? '請輸入問題標題 (必填)',
      'feedback.contentHint' =>
        TranslationOverrides.string(_root.$meta, 'feedback.contentHint', {}) ?? '請詳細描述您遇到的問題或建議 (必填)',
      'feedback.uploadScreenshot' =>
        TranslationOverrides.string(_root.$meta, 'feedback.uploadScreenshot', {}) ?? '上傳截圖 (可選)',
      'feedback.addImage' => TranslationOverrides.string(_root.$meta, 'feedback.addImage', {}) ?? '添加圖片',
      'feedback.uploadLimitHint' =>
        TranslationOverrides.string(_root.$meta, 'feedback.uploadLimitHint', {}) ?? '最多可上傳3張圖片，每張不超過2MB，支持jpg、png格式',
      'feedback.contactOptional' =>
        TranslationOverrides.string(_root.$meta, 'feedback.contactOptional', {}) ?? '聯繫方式 (可選)',
      'feedback.contactInputHint' =>
        TranslationOverrides.string(_root.$meta, 'feedback.contactInputHint', {}) ?? '請輸入您的手機號或郵箱，方便我們聯繫您',
      'feedback.submit' => TranslationOverrides.string(_root.$meta, 'feedback.submit', {}) ?? '提交反饋',
      'feedback.submitSuccess' =>
        TranslationOverrides.string(_root.$meta, 'feedback.submitSuccess', {}) ?? '反饋提交成功，感謝您的支持',
      'feedback.submitFailed' =>
        TranslationOverrides.string(_root.$meta, 'feedback.submitFailed', {}) ?? '反饋提交失敗，請稍後重試',
      'inventory.machineList' => TranslationOverrides.string(_root.$meta, 'inventory.machineList', {}) ?? '補貨管理',
      'inventory.totalSlots' => TranslationOverrides.string(_root.$meta, 'inventory.totalSlots', {}) ?? '總貨道',
      'inventory.lowStockSlots' => TranslationOverrides.string(_root.$meta, 'inventory.lowStockSlots', {}) ?? '低庫存',
      'inventory.emptySlots' => TranslationOverrides.string(_root.$meta, 'inventory.emptySlots', {}) ?? '空貨道',
      'inventory.slotList' => TranslationOverrides.string(_root.$meta, 'inventory.slotList', {}) ?? '貨道管理',
      'inventory.slotNumber' => TranslationOverrides.string(_root.$meta, 'inventory.slotNumber', {}) ?? '貨道編號',
      'inventory.productName' => TranslationOverrides.string(_root.$meta, 'inventory.productName', {}) ?? '商品名稱',
      'inventory.quantity' => TranslationOverrides.string(_root.$meta, 'inventory.quantity', {}) ?? '數量',
      'inventory.lowStock' => TranslationOverrides.string(_root.$meta, 'inventory.lowStock', {}) ?? '低庫存',
      'inventory.empty' => TranslationOverrides.string(_root.$meta, 'inventory.empty', {}) ?? '空貨道',
      'inventory.editQuantity' => TranslationOverrides.string(_root.$meta, 'inventory.editQuantity', {}) ?? '編輯數量',
      'inventory.confirm' => TranslationOverrides.string(_root.$meta, 'inventory.confirm', {}) ?? '確認',
      'inventory.cancel' => TranslationOverrides.string(_root.$meta, 'inventory.cancel', {}) ?? '取消',
      'inventory.updateSuccess' => TranslationOverrides.string(_root.$meta, 'inventory.updateSuccess', {}) ?? '更新成功',
      'inventory.updateFailed' => TranslationOverrides.string(_root.$meta, 'inventory.updateFailed', {}) ?? '更新失敗',
      'inventory.quantityMustBeNonNegative' =>
        TranslationOverrides.string(_root.$meta, 'inventory.quantityMustBeNonNegative', {}) ?? '數量必須為非負整數',
      'inventory.emptyState' => TranslationOverrides.string(_root.$meta, 'inventory.emptyState', {}) ?? '暫無貨道',
      'machines.dashboard' => TranslationOverrides.string(_root.$meta, 'machines.dashboard', {}) ?? '營運儀表板',
      'machines.machineList' => TranslationOverrides.string(_root.$meta, 'machines.machineList', {}) ?? '機器列表',
      'machines.orderList' => TranslationOverrides.string(_root.$meta, 'machines.orderList', {}) ?? '訂單記錄',
      'machines.revenueTrend' => TranslationOverrides.string(_root.$meta, 'machines.revenueTrend', {}) ?? '營收趨勢',
      'machines.orderVolume' => TranslationOverrides.string(_root.$meta, 'machines.orderVolume', {}) ?? '訂單量',
      'machines.productSalesRatio' =>
        TranslationOverrides.string(_root.$meta, 'machines.productSalesRatio', {}) ?? '商品銷售佔比',
      'machines.machineRevenueComparison' =>
        TranslationOverrides.string(_root.$meta, 'machines.machineRevenueComparison', {}) ?? '機器收益對比',
      'machines.totalRevenue' => TranslationOverrides.string(_root.$meta, 'machines.totalRevenue', {}) ?? '總營收',
      'machines.totalOrders' => TranslationOverrides.string(_root.$meta, 'machines.totalOrders', {}) ?? '總訂單數',
      'machines.dailyAvgRevenue' => TranslationOverrides.string(_root.$meta, 'machines.dailyAvgRevenue', {}) ?? '日均營收',
      'machines.growthRate' => TranslationOverrides.string(_root.$meta, 'machines.growthRate', {}) ?? '環比增長率',
      'machines.totalMachines' => TranslationOverrides.string(_root.$meta, 'machines.totalMachines', {}) ?? '總設備數量',
      'machines.noChartData' => TranslationOverrides.string(_root.$meta, 'machines.noChartData', {}) ?? '暫無數據',
      'machines.loading' => TranslationOverrides.string(_root.$meta, 'machines.loading', {}) ?? '載入中',
      'machines.currencyPrefix' => TranslationOverrides.string(_root.$meta, 'machines.currencyPrefix', {}) ?? '¥',
      'machines.emptyState' => TranslationOverrides.string(_root.$meta, 'machines.emptyState', {}) ?? '暫無機器',
      'machines.emptyOrders' => TranslationOverrides.string(_root.$meta, 'machines.emptyOrders', {}) ?? '暫無訂單',
      'machines.timePeriod.day' => TranslationOverrides.string(_root.$meta, 'machines.timePeriod.day', {}) ?? '日',
      'machines.timePeriod.week' => TranslationOverrides.string(_root.$meta, 'machines.timePeriod.week', {}) ?? '週',
      'machines.timePeriod.month' => TranslationOverrides.string(_root.$meta, 'machines.timePeriod.month', {}) ?? '月',
      'machines.timePeriod.quarter' =>
        TranslationOverrides.string(_root.$meta, 'machines.timePeriod.quarter', {}) ?? '季度',
      'machines.timePeriod.year' => TranslationOverrides.string(_root.$meta, 'machines.timePeriod.year', {}) ?? '年',
      'machines.total' => TranslationOverrides.string(_root.$meta, 'machines.total', {}) ?? '合計',
      'machines.orders' => TranslationOverrides.string(_root.$meta, 'machines.orders', {}) ?? '單',
      'maintenance.machineList' => TranslationOverrides.string(_root.$meta, 'maintenance.machineList', {}) ?? '維護管理',
      'maintenance.faultCount' => TranslationOverrides.string(_root.$meta, 'maintenance.faultCount', {}) ?? '故障次數',
      'maintenance.lastFaultAt' => TranslationOverrides.string(_root.$meta, 'maintenance.lastFaultAt', {}) ?? '最近故障時間',
      'maintenance.noFaults' => TranslationOverrides.string(_root.$meta, 'maintenance.noFaults', {}) ?? '無故障',
      'maintenance.faultList' => TranslationOverrides.string(_root.$meta, 'maintenance.faultList', {}) ?? '故障記錄',
      'maintenance.faultType' => TranslationOverrides.string(_root.$meta, 'maintenance.faultType', {}) ?? '故障類型',
      'maintenance.description' => TranslationOverrides.string(_root.$meta, 'maintenance.description', {}) ?? '描述',
      'maintenance.occurredAt' => TranslationOverrides.string(_root.$meta, 'maintenance.occurredAt', {}) ?? '發生時間',
      'maintenance.pending' => TranslationOverrides.string(_root.$meta, 'maintenance.pending', {}) ?? '待處理',
      'maintenance.resolved' => TranslationOverrides.string(_root.$meta, 'maintenance.resolved', {}) ?? '已解決',
      'maintenance.statusPending' => TranslationOverrides.string(_root.$meta, 'maintenance.statusPending', {}) ?? '待處理',
      'maintenance.statusResolved' =>
        TranslationOverrides.string(_root.$meta, 'maintenance.statusResolved', {}) ?? '已解決',
      'maintenance.noFaultRecords' =>
        TranslationOverrides.string(_root.$meta, 'maintenance.noFaultRecords', {}) ?? '暫無故障記錄',
      'maintenance.emptyState' => TranslationOverrides.string(_root.$meta, 'maintenance.emptyState', {}) ?? '暫無機器',
      'maintenance.loadFailed' => TranslationOverrides.string(_root.$meta, 'maintenance.loadFailed', {}) ?? '載入失敗',
      'maintenance.retry' => TranslationOverrides.string(_root.$meta, 'maintenance.retry', {}) ?? '重試',
      'navigation.machines' => TranslationOverrides.string(_root.$meta, 'navigation.machines', {}) ?? '代理',
      'navigation.inventory' => TranslationOverrides.string(_root.$meta, 'navigation.inventory', {}) ?? '庫存',
      'navigation.maintenance' => TranslationOverrides.string(_root.$meta, 'navigation.maintenance', {}) ?? '維護',
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
        TranslationOverrides.string(_root.$meta, 'notifications.markAllRead', {}) ?? '全部標記为已讀',
      'notifications.empty' => TranslationOverrides.string(_root.$meta, 'notifications.empty', {}) ?? '暫無通知',
      'notifications.unread' => TranslationOverrides.string(_root.$meta, 'notifications.unread', {}) ?? '未讀消息',
      'notifications.read' => TranslationOverrides.string(_root.$meta, 'notifications.read', {}) ?? '已讀消息',
      'notifications.priority.high' =>
        TranslationOverrides.string(_root.$meta, 'notifications.priority.high', {}) ?? '高優先級',
      'notifications.priority.medium' =>
        TranslationOverrides.string(_root.$meta, 'notifications.priority.medium', {}) ?? '普通',
      'notifications.priority.low' =>
        TranslationOverrides.string(_root.$meta, 'notifications.priority.low', {}) ?? '低優先級',
      'profile.title' => TranslationOverrides.string(_root.$meta, 'profile.title', {}) ?? '用戶中心',
      'profile.notLoggedIn' => TranslationOverrides.string(_root.$meta, 'profile.notLoggedIn', {}) ?? '未登入',
      'profile.editProfile' => TranslationOverrides.string(_root.$meta, 'profile.editProfile', {}) ?? '編輯資料',
      'profile.logout' => TranslationOverrides.string(_root.$meta, 'profile.logout', {}) ?? '登出',
      'profile.favoriteDevices' => TranslationOverrides.string(_root.$meta, 'profile.favoriteDevices', {}) ?? '收藏設備',
      'profile.personalInfo' => TranslationOverrides.string(_root.$meta, 'profile.personalInfo', {}) ?? '個人資訊',
      'profile.confirmLogout' => TranslationOverrides.string(_root.$meta, 'profile.confirmLogout', {}) ?? '確認登出',
      'profile.confirmLogoutContent' =>
        TranslationOverrides.string(_root.$meta, 'profile.confirmLogoutContent', {}) ?? '確定要登出嗎？',
      'profile.clearCacheConfirm' =>
        TranslationOverrides.string(_root.$meta, 'profile.clearCacheConfirm', {}) ?? '確定要清除所有快取數據嗎？',
      'profile.noFavoriteDevices' =>
        TranslationOverrides.string(_root.$meta, 'profile.noFavoriteDevices', {}) ?? '暫無收藏設備',
      'profile.removeFavorite' => TranslationOverrides.string(_root.$meta, 'profile.removeFavorite', {}) ?? '取消收藏',
      'profile.removeFavoriteConfirm' =>
        ({required Object name}) =>
            TranslationOverrides.string(_root.$meta, 'profile.removeFavoriteConfirm', {'name': name}) ??
            '確定要取消收藏"${name}"嗎？',
      'profile.appDescription' =>
        TranslationOverrides.string(_root.$meta, 'profile.appDescription', {}) ?? '一個便捷的自動售貨機購買應用',
      'profile.version' =>
        ({required Object version}) =>
            TranslationOverrides.string(_root.$meta, 'profile.version', {'version': version}) ?? '版本：${version}',
      'profile.wallet' => TranslationOverrides.string(_root.$meta, 'profile.wallet', {}) ?? '我的錢包',
      'profile.coupon' => TranslationOverrides.string(_root.$meta, 'profile.coupon', {}) ?? '優惠券',
      'profile.feedback' => TranslationOverrides.string(_root.$meta, 'profile.feedback', {}) ?? '問題反饋',
      'profile.cooperation' => TranslationOverrides.string(_root.$meta, 'profile.cooperation', {}) ?? '合作商加盟',
      'profile.about' => TranslationOverrides.string(_root.$meta, 'profile.about', {}) ?? '關於我們',
      'profile.settings' => TranslationOverrides.string(_root.$meta, 'profile.settings', {}) ?? '設置',
      'profile.gender.male' => TranslationOverrides.string(_root.$meta, 'profile.gender.male', {}) ?? '男',
      'profile.gender.female' => TranslationOverrides.string(_root.$meta, 'profile.gender.female', {}) ?? '女',
      'profile.gender.unknown' => TranslationOverrides.string(_root.$meta, 'profile.gender.unknown', {}) ?? '保密',
      'profile.info.basic' => TranslationOverrides.string(_root.$meta, 'profile.info.basic', {}) ?? '基本信息',
      'profile.info.other' => TranslationOverrides.string(_root.$meta, 'profile.info.other', {}) ?? '其他信息',
      'profile.info.phone' => TranslationOverrides.string(_root.$meta, 'profile.info.phone', {}) ?? '手機號',
      'profile.info.gender' => TranslationOverrides.string(_root.$meta, 'profile.info.gender', {}) ?? '性別',
      'profile.info.birthday' => TranslationOverrides.string(_root.$meta, 'profile.info.birthday', {}) ?? '生日',
      'profile.info.email' => TranslationOverrides.string(_root.$meta, 'profile.info.email', {}) ?? '郵箱',
      'profile.info.notSet' => TranslationOverrides.string(_root.$meta, 'profile.info.notSet', {}) ?? '未設置',
      'profile.avatar.clickToChange' =>
        TranslationOverrides.string(_root.$meta, 'profile.avatar.clickToChange', {}) ?? '點擊更換頭像',
      'profile.avatar.uploading' =>
        TranslationOverrides.string(_root.$meta, 'profile.avatar.uploading', {}) ?? '頭像上傳功能開發中',
      'profile.saveSuccess' => TranslationOverrides.string(_root.$meta, 'profile.saveSuccess', {}) ?? '保存成功',
      'profile.saveFailed' =>
        ({required Object error}) =>
            TranslationOverrides.string(_root.$meta, 'profile.saveFailed', {'error': error}) ?? '保存失敗: ${error}',
      'profile.saveInfo' => TranslationOverrides.string(_root.$meta, 'profile.saveInfo', {}) ?? '保存信息',
      'profile.walletBalance' => TranslationOverrides.string(_root.$meta, 'profile.walletBalance', {}) ?? '錢包餘額',
      'profile.coin' => TranslationOverrides.string(_root.$meta, 'profile.coin', {}) ?? '積分',
      'profile.couponCount' => TranslationOverrides.string(_root.$meta, 'profile.couponCount', {}) ?? '優惠券',
      'profile.pointsMall' => TranslationOverrides.string(_root.$meta, 'profile.pointsMall', {}) ?? '積分兌換',
      'settings.title' => TranslationOverrides.string(_root.$meta, 'settings.title', {}) ?? '設定',
      'settings.general' => TranslationOverrides.string(_root.$meta, 'settings.general', {}) ?? '通用',
      'settings.language' => TranslationOverrides.string(_root.$meta, 'settings.language', {}) ?? '語言',
      'settings.checkUpdate' => TranslationOverrides.string(_root.$meta, 'settings.checkUpdate', {}) ?? '檢查更新',
      'settings.clearCache' => TranslationOverrides.string(_root.$meta, 'settings.clearCache', {}) ?? '清除快取',
      'settings.about' => TranslationOverrides.string(_root.$meta, 'settings.about', {}) ?? '關於',
      'settings.deviceInfo' => TranslationOverrides.string(_root.$meta, 'settings.deviceInfo', {}) ?? '設備資訊',
      'settings.aboutUs' => TranslationOverrides.string(_root.$meta, 'settings.aboutUs', {}) ?? '關於我們',
      'settings.checkingUpdate' =>
        TranslationOverrides.string(_root.$meta, 'settings.checkingUpdate', {}) ?? '正在檢查更新...',
      'settings.cacheCleared' => TranslationOverrides.string(_root.$meta, 'settings.cacheCleared', {}) ?? '快取已清除',
      'settings.english' => TranslationOverrides.string(_root.$meta, 'settings.english', {}) ?? '英語',
      'settings.chinese' => TranslationOverrides.string(_root.$meta, 'settings.chinese', {}) ?? '簡體中文',
      'settings.traditionalChinese' =>
        TranslationOverrides.string(_root.$meta, 'settings.traditionalChinese', {}) ?? '繁體中文',
      'settings.theme' => TranslationOverrides.string(_root.$meta, 'settings.theme', {}) ?? '主題模式',
      'settings.themeScheme' => TranslationOverrides.string(_root.$meta, 'settings.themeScheme', {}) ?? '主題配色',
      'settings.schemes.shadOrange' =>
        TranslationOverrides.string(_root.$meta, 'settings.schemes.shadOrange', {}) ?? '活力橙 (ShadOrange)',
      'settings.schemes.shadGreen' =>
        TranslationOverrides.string(_root.$meta, 'settings.schemes.shadGreen', {}) ?? '自然綠 (ShadGreen)',
      'settings.schemes.bahamaBlue' =>
        TranslationOverrides.string(_root.$meta, 'settings.schemes.bahamaBlue', {}) ?? '巴哈馬藍 (BahamaBlue)',
      'settings.schemes.damask' =>
        TranslationOverrides.string(_root.$meta, 'settings.schemes.damask', {}) ?? '錦緞紅 (Damask)',
      'settings.appName' => TranslationOverrides.string(_root.$meta, 'settings.appName', {}) ?? '應用名稱',
      'settings.packageName' => TranslationOverrides.string(_root.$meta, 'settings.packageName', {}) ?? '包名',
      'settings.versionName' => TranslationOverrides.string(_root.$meta, 'settings.versionName', {}) ?? '版本號',
      'settings.buildNumber' => TranslationOverrides.string(_root.$meta, 'settings.buildNumber', {}) ?? '構建號',
      'settings.copyright' =>
        TranslationOverrides.string(_root.$meta, 'settings.copyright', {}) ?? '© 2024 Lunchbox Team',
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
