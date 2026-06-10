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
  late final _Translations$auth$en auth = _Translations$auth$en._(_root);
  @override
  late final _Translations$common$en common = _Translations$common$en._(_root);
  @override
  late final _Translations$feedback$en feedback = _Translations$feedback$en._(_root);
  @override
  late final _Translations$inventory$en inventory = _Translations$inventory$en._(_root);
  @override
  late final _Translations$machines$en machines = _Translations$machines$en._(_root);
  @override
  late final _Translations$maintenance$en maintenance = _Translations$maintenance$en._(_root);
  @override
  late final _Translations$navigation$en navigation = _Translations$navigation$en._(_root);
  @override
  late final _Translations$network$en network = _Translations$network$en._(_root);
  @override
  late final _Translations$notifications$en notifications = _Translations$notifications$en._(_root);
  @override
  late final _Translations$profile$en profile = _Translations$profile$en._(_root);
  @override
  late final _Translations$settings$en settings = _Translations$settings$en._(_root);
  @override
  late final _Translations$time$en time = _Translations$time$en._(_root);
}

// Path: auth
class _Translations$auth$en extends Translations$auth$zh_CN {
  _Translations$auth$en._(TranslationsEn root) : this._root = root, super.internal(root);

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
      TranslationOverrides.string(_root.$meta, 'auth.enterUsernameHint', {}) ?? 'Enter username, phone or email';
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
class _Translations$common$en extends Translations$common$zh_CN {
  _Translations$common$en._(TranslationsEn root) : this._root = root, super.internal(root);

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
  @override
  String get welcomeBack => TranslationOverrides.string(_root.$meta, 'common.welcomeBack', {}) ?? 'Welcome Back';
  @override
  String get notifications => TranslationOverrides.string(_root.$meta, 'common.notifications', {}) ?? 'Notifications';
}

// Path: feedback
class _Translations$feedback$en extends Translations$feedback$zh_CN {
  _Translations$feedback$en._(TranslationsEn root) : this._root = root, super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => TranslationOverrides.string(_root.$meta, 'feedback.title', {}) ?? 'Feedback';
  @override
  String get subtitle =>
      TranslationOverrides.string(_root.$meta, 'feedback.subtitle', {}) ??
      'Your feedback is our motivation for progress';
  @override
  String get selectType =>
      TranslationOverrides.string(_root.$meta, 'feedback.selectType', {}) ?? 'Select Feedback Type';
  @override
  String get errorReport => TranslationOverrides.string(_root.$meta, 'feedback.errorReport', {}) ?? 'Error Report';
  @override
  String get suggestion => TranslationOverrides.string(_root.$meta, 'feedback.suggestion', {}) ?? 'Suggestion';
  @override
  String get complaint => TranslationOverrides.string(_root.$meta, 'feedback.complaint', {}) ?? 'Complaint';
  @override
  String get other => TranslationOverrides.string(_root.$meta, 'feedback.other', {}) ?? 'Other';
  @override
  String get description =>
      TranslationOverrides.string(_root.$meta, 'feedback.description', {}) ?? 'Problem Description';
  @override
  String get titleHint =>
      TranslationOverrides.string(_root.$meta, 'feedback.titleHint', {}) ?? 'Please enter the problem title (Required)';
  @override
  String get contentHint =>
      TranslationOverrides.string(_root.$meta, 'feedback.contentHint', {}) ??
      'Please describe the problem or suggestion in detail (Required)';
  @override
  String get uploadScreenshot =>
      TranslationOverrides.string(_root.$meta, 'feedback.uploadScreenshot', {}) ?? 'Upload Screenshot (Optional)';
  @override
  String get addImage => TranslationOverrides.string(_root.$meta, 'feedback.addImage', {}) ?? 'Add Image';
  @override
  String get uploadLimitHint =>
      TranslationOverrides.string(_root.$meta, 'feedback.uploadLimitHint', {}) ??
      'Up to 3 images, each not exceeding 2MB, support jpg, png formats';
  @override
  String get contactOptional =>
      TranslationOverrides.string(_root.$meta, 'feedback.contactOptional', {}) ?? 'Contact Information (Optional)';
  @override
  String get contactInputHint =>
      TranslationOverrides.string(_root.$meta, 'feedback.contactInputHint', {}) ??
      'Please enter your phone number or email for us to contact you';
  @override
  String get submit => TranslationOverrides.string(_root.$meta, 'feedback.submit', {}) ?? 'Submit Feedback';
  @override
  String get submitSuccess =>
      TranslationOverrides.string(_root.$meta, 'feedback.submitSuccess', {}) ??
      'Feedback submitted successfully, thank you for your support';
  @override
  String get submitFailed =>
      TranslationOverrides.string(_root.$meta, 'feedback.submitFailed', {}) ??
      'Feedback submission failed, please try again later';
}

// Path: inventory
class _Translations$inventory$en extends Translations$inventory$zh_CN {
  _Translations$inventory$en._(TranslationsEn root) : this._root = root, super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get machineList =>
      TranslationOverrides.string(_root.$meta, 'inventory.machineList', {}) ?? 'Restocking Management';
  @override
  String get totalSlots => TranslationOverrides.string(_root.$meta, 'inventory.totalSlots', {}) ?? 'Total Slots';
  @override
  String get lowStockSlots => TranslationOverrides.string(_root.$meta, 'inventory.lowStockSlots', {}) ?? 'Low Stock';
  @override
  String get emptySlots => TranslationOverrides.string(_root.$meta, 'inventory.emptySlots', {}) ?? 'Empty Slots';
  @override
  String get slotList => TranslationOverrides.string(_root.$meta, 'inventory.slotList', {}) ?? 'Slot Management';
  @override
  String get slotNumber => TranslationOverrides.string(_root.$meta, 'inventory.slotNumber', {}) ?? 'Slot Number';
  @override
  String get productName => TranslationOverrides.string(_root.$meta, 'inventory.productName', {}) ?? 'Product Name';
  @override
  String get quantity => TranslationOverrides.string(_root.$meta, 'inventory.quantity', {}) ?? 'Quantity';
  @override
  String get lowStock => TranslationOverrides.string(_root.$meta, 'inventory.lowStock', {}) ?? 'Low Stock';
  @override
  String get empty => TranslationOverrides.string(_root.$meta, 'inventory.empty', {}) ?? 'Empty Slot';
  @override
  String get editQuantity => TranslationOverrides.string(_root.$meta, 'inventory.editQuantity', {}) ?? 'Edit Quantity';
  @override
  String get confirm => TranslationOverrides.string(_root.$meta, 'inventory.confirm', {}) ?? 'Confirm';
  @override
  String get cancel => TranslationOverrides.string(_root.$meta, 'inventory.cancel', {}) ?? 'Cancel';
  @override
  String get updateSuccess =>
      TranslationOverrides.string(_root.$meta, 'inventory.updateSuccess', {}) ?? 'Update Successful';
  @override
  String get updateFailed => TranslationOverrides.string(_root.$meta, 'inventory.updateFailed', {}) ?? 'Update Failed';
  @override
  String get quantityMustBeNonNegative =>
      TranslationOverrides.string(_root.$meta, 'inventory.quantityMustBeNonNegative', {}) ??
      'Quantity must be a non-negative integer';
  @override
  String maxStockReached({required Object max}) =>
      TranslationOverrides.string(_root.$meta, 'inventory.maxStockReached', {'max': max}) ??
      'Max stock reached (${max})';
  @override
  String get emptyState => TranslationOverrides.string(_root.$meta, 'inventory.emptyState', {}) ?? 'No Slots';
}

// Path: machines
class _Translations$machines$en extends Translations$machines$zh_CN {
  _Translations$machines$en._(TranslationsEn root) : this._root = root, super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get dashboard => TranslationOverrides.string(_root.$meta, 'machines.dashboard', {}) ?? 'Dashboard';
  @override
  String get machineList => TranslationOverrides.string(_root.$meta, 'machines.machineList', {}) ?? 'Machine List';
  @override
  String get orderList => TranslationOverrides.string(_root.$meta, 'machines.orderList', {}) ?? 'Order Records';
  @override
  String get revenueTrend => TranslationOverrides.string(_root.$meta, 'machines.revenueTrend', {}) ?? 'Revenue Trend';
  @override
  String get orderVolume => TranslationOverrides.string(_root.$meta, 'machines.orderVolume', {}) ?? 'Order Volume';
  @override
  String get productSalesRatio =>
      TranslationOverrides.string(_root.$meta, 'machines.productSalesRatio', {}) ?? 'Product Sales Ratio';
  @override
  String get machineRevenueComparison =>
      TranslationOverrides.string(_root.$meta, 'machines.machineRevenueComparison', {}) ?? 'Machine Revenue Comparison';
  @override
  String get totalRevenue => TranslationOverrides.string(_root.$meta, 'machines.totalRevenue', {}) ?? 'Total Revenue';
  @override
  String get totalOrders => TranslationOverrides.string(_root.$meta, 'machines.totalOrders', {}) ?? 'Total Orders';
  @override
  String get dailyAvgRevenue =>
      TranslationOverrides.string(_root.$meta, 'machines.dailyAvgRevenue', {}) ?? 'Daily Avg Revenue';
  @override
  String get growthRate => TranslationOverrides.string(_root.$meta, 'machines.growthRate', {}) ?? 'Growth Rate';
  @override
  String get totalMachines =>
      TranslationOverrides.string(_root.$meta, 'machines.totalMachines', {}) ?? 'Total Machines';
  @override
  String get noChartData => TranslationOverrides.string(_root.$meta, 'machines.noChartData', {}) ?? 'No Data';
  @override
  String get loading => TranslationOverrides.string(_root.$meta, 'machines.loading', {}) ?? 'Loading';
  @override
  String get currencyPrefix => TranslationOverrides.string(_root.$meta, 'machines.currencyPrefix', {}) ?? '¥';
  @override
  String get emptyState => TranslationOverrides.string(_root.$meta, 'machines.emptyState', {}) ?? 'No machines';
  @override
  String get emptyOrders => TranslationOverrides.string(_root.$meta, 'machines.emptyOrders', {}) ?? 'No orders';
  @override
  late final _Translations$machines$timePeriod$en timePeriod = _Translations$machines$timePeriod$en._(_root);
  @override
  String get total => TranslationOverrides.string(_root.$meta, 'machines.total', {}) ?? 'Total';
  @override
  String get orders => TranslationOverrides.string(_root.$meta, 'machines.orders', {}) ?? 'Orders';
}

// Path: maintenance
class _Translations$maintenance$en extends Translations$maintenance$zh_CN {
  _Translations$maintenance$en._(TranslationsEn root) : this._root = root, super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get machineList =>
      TranslationOverrides.string(_root.$meta, 'maintenance.machineList', {}) ?? 'Maintenance Management';
  @override
  String get faultCount => TranslationOverrides.string(_root.$meta, 'maintenance.faultCount', {}) ?? 'Fault Count';
  @override
  String get lastFaultAt =>
      TranslationOverrides.string(_root.$meta, 'maintenance.lastFaultAt', {}) ?? 'Last Fault Time';
  @override
  String get noFaults => TranslationOverrides.string(_root.$meta, 'maintenance.noFaults', {}) ?? 'No Faults';
  @override
  String get faultList => TranslationOverrides.string(_root.$meta, 'maintenance.faultList', {}) ?? 'Fault Records';
  @override
  String get faultType => TranslationOverrides.string(_root.$meta, 'maintenance.faultType', {}) ?? 'Fault Type';
  @override
  String get description => TranslationOverrides.string(_root.$meta, 'maintenance.description', {}) ?? 'Description';
  @override
  String get occurredAt => TranslationOverrides.string(_root.$meta, 'maintenance.occurredAt', {}) ?? 'Occurred At';
  @override
  String get pending => TranslationOverrides.string(_root.$meta, 'maintenance.pending', {}) ?? 'Pending';
  @override
  String get resolved => TranslationOverrides.string(_root.$meta, 'maintenance.resolved', {}) ?? 'Resolved';
  @override
  String get statusPending => TranslationOverrides.string(_root.$meta, 'maintenance.statusPending', {}) ?? 'Pending';
  @override
  String get statusResolved => TranslationOverrides.string(_root.$meta, 'maintenance.statusResolved', {}) ?? 'Resolved';
  @override
  String get statusFault => TranslationOverrides.string(_root.$meta, 'maintenance.statusFault', {}) ?? 'Fault';
  @override
  String get statusOnline => TranslationOverrides.string(_root.$meta, 'maintenance.statusOnline', {}) ?? 'Online';
  @override
  String get noFaultRecords =>
      TranslationOverrides.string(_root.$meta, 'maintenance.noFaultRecords', {}) ?? 'No Fault Records';
  @override
  String get emptyState => TranslationOverrides.string(_root.$meta, 'maintenance.emptyState', {}) ?? 'No Machines';
  @override
  String get loadFailed => TranslationOverrides.string(_root.$meta, 'maintenance.loadFailed', {}) ?? 'Load Failed';
  @override
  String get retry => TranslationOverrides.string(_root.$meta, 'maintenance.retry', {}) ?? 'Retry';
}

// Path: navigation
class _Translations$navigation$en extends Translations$navigation$zh_CN {
  _Translations$navigation$en._(TranslationsEn root) : this._root = root, super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get machines => TranslationOverrides.string(_root.$meta, 'navigation.machines', {}) ?? 'Agent';
  @override
  String get inventory => TranslationOverrides.string(_root.$meta, 'navigation.inventory', {}) ?? 'Inventory';
  @override
  String get maintenance => TranslationOverrides.string(_root.$meta, 'navigation.maintenance', {}) ?? 'Maintenance';
  @override
  String get profile => TranslationOverrides.string(_root.$meta, 'navigation.profile', {}) ?? 'Profile';
}

// Path: network
class _Translations$network$en extends Translations$network$zh_CN {
  _Translations$network$en._(TranslationsEn root) : this._root = root, super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  late final _Translations$network$errors$en errors = _Translations$network$errors$en._(_root);
}

// Path: notifications
class _Translations$notifications$en extends Translations$notifications$zh_CN {
  _Translations$notifications$en._(TranslationsEn root) : this._root = root, super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => TranslationOverrides.string(_root.$meta, 'notifications.title', {}) ?? 'Notifications';
  @override
  String get markAllRead =>
      TranslationOverrides.string(_root.$meta, 'notifications.markAllRead', {}) ?? 'Mark all as read';
  @override
  String get empty => TranslationOverrides.string(_root.$meta, 'notifications.empty', {}) ?? 'No notifications';
  @override
  String get unread => TranslationOverrides.string(_root.$meta, 'notifications.unread', {}) ?? 'Unread';
  @override
  String get read => TranslationOverrides.string(_root.$meta, 'notifications.read', {}) ?? 'Read';
  @override
  late final _Translations$notifications$priority$en priority = _Translations$notifications$priority$en._(_root);
}

// Path: profile
class _Translations$profile$en extends Translations$profile$zh_CN {
  _Translations$profile$en._(TranslationsEn root) : this._root = root, super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => TranslationOverrides.string(_root.$meta, 'profile.title', {}) ?? 'User Center';
  @override
  String get notLoggedIn => TranslationOverrides.string(_root.$meta, 'profile.notLoggedIn', {}) ?? 'Not Logged In';
  @override
  String get editProfile => TranslationOverrides.string(_root.$meta, 'profile.editProfile', {}) ?? 'Edit Profile';
  @override
  String get logout => TranslationOverrides.string(_root.$meta, 'profile.logout', {}) ?? 'Logout';
  @override
  String get favoriteDevices =>
      TranslationOverrides.string(_root.$meta, 'profile.favoriteDevices', {}) ?? 'Favorite Devices';
  @override
  String get personalInfo => TranslationOverrides.string(_root.$meta, 'profile.personalInfo', {}) ?? 'Personal Info';
  @override
  String get confirmLogout => TranslationOverrides.string(_root.$meta, 'profile.confirmLogout', {}) ?? 'Confirm Logout';
  @override
  String get confirmLogoutContent =>
      TranslationOverrides.string(_root.$meta, 'profile.confirmLogoutContent', {}) ??
      'Are you sure you want to logout?';
  @override
  String get clearCacheConfirm =>
      TranslationOverrides.string(_root.$meta, 'profile.clearCacheConfirm', {}) ??
      'Are you sure you want to clear all cache data?';
  @override
  String get noFavoriteDevices =>
      TranslationOverrides.string(_root.$meta, 'profile.noFavoriteDevices', {}) ?? 'No favorite devices';
  @override
  String get removeFavorite => TranslationOverrides.string(_root.$meta, 'profile.removeFavorite', {}) ?? 'Unfavorite';
  @override
  String removeFavoriteConfirm({required Object name}) =>
      TranslationOverrides.string(_root.$meta, 'profile.removeFavoriteConfirm', {'name': name}) ??
      'Are you sure you want to unfavorite "${name}"?';
  @override
  String get appDescription =>
      TranslationOverrides.string(_root.$meta, 'profile.appDescription', {}) ??
      'A convenient vending machine purchasing application';
  @override
  String version({required Object version}) =>
      TranslationOverrides.string(_root.$meta, 'profile.version', {'version': version}) ?? 'Version: ${version}';
  @override
  String get wallet => TranslationOverrides.string(_root.$meta, 'profile.wallet', {}) ?? 'My Wallet';
  @override
  String get coupon => TranslationOverrides.string(_root.$meta, 'profile.coupon', {}) ?? 'Coupons';
  @override
  String get feedback => TranslationOverrides.string(_root.$meta, 'profile.feedback', {}) ?? 'Feedback';
  @override
  String get cooperation => TranslationOverrides.string(_root.$meta, 'profile.cooperation', {}) ?? 'Cooperation';
  @override
  String get about => TranslationOverrides.string(_root.$meta, 'profile.about', {}) ?? 'About Us';
  @override
  String get settings => TranslationOverrides.string(_root.$meta, 'profile.settings', {}) ?? 'Settings';
  @override
  late final _Translations$profile$gender$en gender = _Translations$profile$gender$en._(_root);
  @override
  late final _Translations$profile$info$en info = _Translations$profile$info$en._(_root);
  @override
  late final _Translations$profile$avatar$en avatar = _Translations$profile$avatar$en._(_root);
  @override
  String get saveSuccess => TranslationOverrides.string(_root.$meta, 'profile.saveSuccess', {}) ?? 'Saved successfully';
  @override
  String saveFailed({required Object error}) =>
      TranslationOverrides.string(_root.$meta, 'profile.saveFailed', {'error': error}) ?? 'Save failed: ${error}';
  @override
  String get saveInfo => TranslationOverrides.string(_root.$meta, 'profile.saveInfo', {}) ?? 'Save Information';
  @override
  String get walletBalance => TranslationOverrides.string(_root.$meta, 'profile.walletBalance', {}) ?? 'Wallet Balance';
  @override
  String get coin => TranslationOverrides.string(_root.$meta, 'profile.coin', {}) ?? 'Points';
  @override
  String get couponCount => TranslationOverrides.string(_root.$meta, 'profile.couponCount', {}) ?? 'Coupons';
  @override
  String get pointsMall => TranslationOverrides.string(_root.$meta, 'profile.pointsMall', {}) ?? 'Points Mall';
  @override
  late final _Translations$profile$walletPage$en walletPage = _Translations$profile$walletPage$en._(_root);
}

// Path: settings
class _Translations$settings$en extends Translations$settings$zh_CN {
  _Translations$settings$en._(TranslationsEn root) : this._root = root, super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => TranslationOverrides.string(_root.$meta, 'settings.title', {}) ?? 'Settings';
  @override
  String get general => TranslationOverrides.string(_root.$meta, 'settings.general', {}) ?? 'General';
  @override
  String get theme => TranslationOverrides.string(_root.$meta, 'settings.theme', {}) ?? 'Theme Mode';
  @override
  String get themeLight => TranslationOverrides.string(_root.$meta, 'settings.themeLight', {}) ?? 'Light';
  @override
  String get themeDark => TranslationOverrides.string(_root.$meta, 'settings.themeDark', {}) ?? 'Dark';
  @override
  String get themeSystem => TranslationOverrides.string(_root.$meta, 'settings.themeSystem', {}) ?? 'System';
  @override
  String get language => TranslationOverrides.string(_root.$meta, 'settings.language', {}) ?? 'Language';
  @override
  String get checkUpdate => TranslationOverrides.string(_root.$meta, 'settings.checkUpdate', {}) ?? 'Check Update';
  @override
  String get clearCache => TranslationOverrides.string(_root.$meta, 'settings.clearCache', {}) ?? 'Clear Cache';
  @override
  String get about => TranslationOverrides.string(_root.$meta, 'settings.about', {}) ?? 'About';
  @override
  String get deviceInfo => TranslationOverrides.string(_root.$meta, 'settings.deviceInfo', {}) ?? 'Device Info';
  @override
  String get aboutUs => TranslationOverrides.string(_root.$meta, 'settings.aboutUs', {}) ?? 'About Us';
  @override
  String get checkingUpdate =>
      TranslationOverrides.string(_root.$meta, 'settings.checkingUpdate', {}) ?? 'Checking for updates...';
  @override
  String get cacheCleared => TranslationOverrides.string(_root.$meta, 'settings.cacheCleared', {}) ?? 'Cache cleared';
  @override
  String get english => TranslationOverrides.string(_root.$meta, 'settings.english', {}) ?? 'English';
  @override
  String get chinese => TranslationOverrides.string(_root.$meta, 'settings.chinese', {}) ?? 'Simplified Chinese';
  @override
  String get traditionalChinese =>
      TranslationOverrides.string(_root.$meta, 'settings.traditionalChinese', {}) ?? 'Traditional Chinese';
  @override
  String get themeScheme => TranslationOverrides.string(_root.$meta, 'settings.themeScheme', {}) ?? 'Color Scheme';
  @override
  late final _Translations$settings$schemes$en schemes = _Translations$settings$schemes$en._(_root);
  @override
  String get appName => TranslationOverrides.string(_root.$meta, 'settings.appName', {}) ?? 'App Name';
  @override
  String get packageName => TranslationOverrides.string(_root.$meta, 'settings.packageName', {}) ?? 'Package Name';
  @override
  String get versionName => TranslationOverrides.string(_root.$meta, 'settings.versionName', {}) ?? 'Version Name';
  @override
  String get buildNumber => TranslationOverrides.string(_root.$meta, 'settings.buildNumber', {}) ?? 'Build Number';
  @override
  String get copyright => TranslationOverrides.string(_root.$meta, 'settings.copyright', {}) ?? '© 2024 Lunchbox Team';
}

// Path: time
class _Translations$time$en extends Translations$time$zh_CN {
  _Translations$time$en._(TranslationsEn root) : this._root = root, super.internal(root);

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

// Path: machines.timePeriod
class _Translations$machines$timePeriod$en extends Translations$machines$timePeriod$zh_CN {
  _Translations$machines$timePeriod$en._(TranslationsEn root) : this._root = root, super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get day => TranslationOverrides.string(_root.$meta, 'machines.timePeriod.day', {}) ?? 'Day';
  @override
  String get week => TranslationOverrides.string(_root.$meta, 'machines.timePeriod.week', {}) ?? 'Week';
  @override
  String get month => TranslationOverrides.string(_root.$meta, 'machines.timePeriod.month', {}) ?? 'Month';
  @override
  String get quarter => TranslationOverrides.string(_root.$meta, 'machines.timePeriod.quarter', {}) ?? 'Quarter';
  @override
  String get year => TranslationOverrides.string(_root.$meta, 'machines.timePeriod.year', {}) ?? 'Year';
}

// Path: network.errors
class _Translations$network$errors$en extends Translations$network$errors$zh_CN {
  _Translations$network$errors$en._(TranslationsEn root) : this._root = root, super.internal(root);

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

// Path: notifications.priority
class _Translations$notifications$priority$en extends Translations$notifications$priority$zh_CN {
  _Translations$notifications$priority$en._(TranslationsEn root) : this._root = root, super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get high => TranslationOverrides.string(_root.$meta, 'notifications.priority.high', {}) ?? 'High';
  @override
  String get medium => TranslationOverrides.string(_root.$meta, 'notifications.priority.medium', {}) ?? 'Medium';
  @override
  String get low => TranslationOverrides.string(_root.$meta, 'notifications.priority.low', {}) ?? 'Low';
}

// Path: profile.gender
class _Translations$profile$gender$en extends Translations$profile$gender$zh_CN {
  _Translations$profile$gender$en._(TranslationsEn root) : this._root = root, super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get male => TranslationOverrides.string(_root.$meta, 'profile.gender.male', {}) ?? 'Male';
  @override
  String get female => TranslationOverrides.string(_root.$meta, 'profile.gender.female', {}) ?? 'Female';
  @override
  String get unknown => TranslationOverrides.string(_root.$meta, 'profile.gender.unknown', {}) ?? 'Secret';
}

// Path: profile.info
class _Translations$profile$info$en extends Translations$profile$info$zh_CN {
  _Translations$profile$info$en._(TranslationsEn root) : this._root = root, super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get basic => TranslationOverrides.string(_root.$meta, 'profile.info.basic', {}) ?? 'Basic Information';
  @override
  String get other => TranslationOverrides.string(_root.$meta, 'profile.info.other', {}) ?? 'Other Information';
  @override
  String get phone => TranslationOverrides.string(_root.$meta, 'profile.info.phone', {}) ?? 'Phone Number';
  @override
  String get gender => TranslationOverrides.string(_root.$meta, 'profile.info.gender', {}) ?? 'Gender';
  @override
  String get birthday => TranslationOverrides.string(_root.$meta, 'profile.info.birthday', {}) ?? 'Birthday';
  @override
  String get email => TranslationOverrides.string(_root.$meta, 'profile.info.email', {}) ?? 'Email';
  @override
  String get notSet => TranslationOverrides.string(_root.$meta, 'profile.info.notSet', {}) ?? 'Not Set';
}

// Path: profile.avatar
class _Translations$profile$avatar$en extends Translations$profile$avatar$zh_CN {
  _Translations$profile$avatar$en._(TranslationsEn root) : this._root = root, super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get clickToChange =>
      TranslationOverrides.string(_root.$meta, 'profile.avatar.clickToChange', {}) ?? 'Click to change avatar';
  @override
  String get uploading =>
      TranslationOverrides.string(_root.$meta, 'profile.avatar.uploading', {}) ??
      'Avatar upload feature is under development';
}

// Path: profile.walletPage
class _Translations$profile$walletPage$en extends Translations$profile$walletPage$zh_CN {
  _Translations$profile$walletPage$en._(TranslationsEn root) : this._root = root, super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => TranslationOverrides.string(_root.$meta, 'profile.walletPage.title', {}) ?? 'Wallet';
  @override
  String get topUp => TranslationOverrides.string(_root.$meta, 'profile.walletPage.topUp', {}) ?? 'Top Up';
  @override
  String get balance => TranslationOverrides.string(_root.$meta, 'profile.walletPage.balance', {}) ?? 'Balance';
  @override
  String get selectAmount =>
      TranslationOverrides.string(_root.$meta, 'profile.walletPage.selectAmount', {}) ?? 'Select Amount';
  @override
  String get rule => TranslationOverrides.string(_root.$meta, 'profile.walletPage.rule', {}) ?? 'Rules';
  @override
  String get ruleDesc =>
      TranslationOverrides.string(_root.$meta, 'profile.walletPage.ruleDesc', {}) ??
      'Top up specific packages to get points. Custom amount does not get points.';
  @override
  String get customAmount =>
      TranslationOverrides.string(_root.$meta, 'profile.walletPage.customAmount', {}) ?? 'Custom Amount';
  @override
  String get customAmountHint =>
      TranslationOverrides.string(_root.$meta, 'profile.walletPage.customAmountHint', {}) ??
      'Only for amounts above ¥500';
  @override
  String realPay({required Object amount}) =>
      TranslationOverrides.string(_root.$meta, 'profile.walletPage.realPay', {'amount': amount}) ?? 'Pay ¥${amount}';
  @override
  String bonus({required Object amount}) =>
      TranslationOverrides.string(_root.$meta, 'profile.walletPage.bonus', {'amount': amount}) ??
      'Get ${amount} points';
  @override
  String get noBonus => TranslationOverrides.string(_root.$meta, 'profile.walletPage.noBonus', {}) ?? 'No points';
  @override
  String get history => TranslationOverrides.string(_root.$meta, 'profile.walletPage.history', {}) ?? 'History';
  @override
  String historyCount({required Object count}) =>
      TranslationOverrides.string(_root.$meta, 'profile.walletPage.historyCount', {'count': count}) ?? 'Total ${count}';
  @override
  String get noHistory =>
      TranslationOverrides.string(_root.$meta, 'profile.walletPage.noHistory', {}) ?? 'No transaction history';
}

// Path: settings.schemes
class _Translations$settings$schemes$en extends Translations$settings$schemes$zh_CN {
  _Translations$settings$schemes$en._(TranslationsEn root) : this._root = root, super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get shadOrange =>
      TranslationOverrides.string(_root.$meta, 'settings.schemes.shadOrange', {}) ?? 'Vibrant Orange (ShadOrange)';
  @override
  String get shadGreen =>
      TranslationOverrides.string(_root.$meta, 'settings.schemes.shadGreen', {}) ?? 'Natural Green (ShadGreen)';
  @override
  String get bahamaBlue =>
      TranslationOverrides.string(_root.$meta, 'settings.schemes.bahamaBlue', {}) ?? 'Bahama Blue (BahamaBlue)';
  @override
  String get damask => TranslationOverrides.string(_root.$meta, 'settings.schemes.damask', {}) ?? 'Damask Red (Damask)';
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
        TranslationOverrides.string(_root.$meta, 'auth.enterUsernameHint', {}) ?? 'Enter username, phone or email',
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
      'common.welcomeBack' => TranslationOverrides.string(_root.$meta, 'common.welcomeBack', {}) ?? 'Welcome Back',
      'common.notifications' => TranslationOverrides.string(_root.$meta, 'common.notifications', {}) ?? 'Notifications',
      'feedback.title' => TranslationOverrides.string(_root.$meta, 'feedback.title', {}) ?? 'Feedback',
      'feedback.subtitle' =>
        TranslationOverrides.string(_root.$meta, 'feedback.subtitle', {}) ??
            'Your feedback is our motivation for progress',
      'feedback.selectType' =>
        TranslationOverrides.string(_root.$meta, 'feedback.selectType', {}) ?? 'Select Feedback Type',
      'feedback.errorReport' => TranslationOverrides.string(_root.$meta, 'feedback.errorReport', {}) ?? 'Error Report',
      'feedback.suggestion' => TranslationOverrides.string(_root.$meta, 'feedback.suggestion', {}) ?? 'Suggestion',
      'feedback.complaint' => TranslationOverrides.string(_root.$meta, 'feedback.complaint', {}) ?? 'Complaint',
      'feedback.other' => TranslationOverrides.string(_root.$meta, 'feedback.other', {}) ?? 'Other',
      'feedback.description' =>
        TranslationOverrides.string(_root.$meta, 'feedback.description', {}) ?? 'Problem Description',
      'feedback.titleHint' =>
        TranslationOverrides.string(_root.$meta, 'feedback.titleHint', {}) ??
            'Please enter the problem title (Required)',
      'feedback.contentHint' =>
        TranslationOverrides.string(_root.$meta, 'feedback.contentHint', {}) ??
            'Please describe the problem or suggestion in detail (Required)',
      'feedback.uploadScreenshot' =>
        TranslationOverrides.string(_root.$meta, 'feedback.uploadScreenshot', {}) ?? 'Upload Screenshot (Optional)',
      'feedback.addImage' => TranslationOverrides.string(_root.$meta, 'feedback.addImage', {}) ?? 'Add Image',
      'feedback.uploadLimitHint' =>
        TranslationOverrides.string(_root.$meta, 'feedback.uploadLimitHint', {}) ??
            'Up to 3 images, each not exceeding 2MB, support jpg, png formats',
      'feedback.contactOptional' =>
        TranslationOverrides.string(_root.$meta, 'feedback.contactOptional', {}) ?? 'Contact Information (Optional)',
      'feedback.contactInputHint' =>
        TranslationOverrides.string(_root.$meta, 'feedback.contactInputHint', {}) ??
            'Please enter your phone number or email for us to contact you',
      'feedback.submit' => TranslationOverrides.string(_root.$meta, 'feedback.submit', {}) ?? 'Submit Feedback',
      'feedback.submitSuccess' =>
        TranslationOverrides.string(_root.$meta, 'feedback.submitSuccess', {}) ??
            'Feedback submitted successfully, thank you for your support',
      'feedback.submitFailed' =>
        TranslationOverrides.string(_root.$meta, 'feedback.submitFailed', {}) ??
            'Feedback submission failed, please try again later',
      'inventory.machineList' =>
        TranslationOverrides.string(_root.$meta, 'inventory.machineList', {}) ?? 'Restocking Management',
      'inventory.totalSlots' => TranslationOverrides.string(_root.$meta, 'inventory.totalSlots', {}) ?? 'Total Slots',
      'inventory.lowStockSlots' =>
        TranslationOverrides.string(_root.$meta, 'inventory.lowStockSlots', {}) ?? 'Low Stock',
      'inventory.emptySlots' => TranslationOverrides.string(_root.$meta, 'inventory.emptySlots', {}) ?? 'Empty Slots',
      'inventory.slotList' => TranslationOverrides.string(_root.$meta, 'inventory.slotList', {}) ?? 'Slot Management',
      'inventory.slotNumber' => TranslationOverrides.string(_root.$meta, 'inventory.slotNumber', {}) ?? 'Slot Number',
      'inventory.productName' =>
        TranslationOverrides.string(_root.$meta, 'inventory.productName', {}) ?? 'Product Name',
      'inventory.quantity' => TranslationOverrides.string(_root.$meta, 'inventory.quantity', {}) ?? 'Quantity',
      'inventory.lowStock' => TranslationOverrides.string(_root.$meta, 'inventory.lowStock', {}) ?? 'Low Stock',
      'inventory.empty' => TranslationOverrides.string(_root.$meta, 'inventory.empty', {}) ?? 'Empty Slot',
      'inventory.editQuantity' =>
        TranslationOverrides.string(_root.$meta, 'inventory.editQuantity', {}) ?? 'Edit Quantity',
      'inventory.confirm' => TranslationOverrides.string(_root.$meta, 'inventory.confirm', {}) ?? 'Confirm',
      'inventory.cancel' => TranslationOverrides.string(_root.$meta, 'inventory.cancel', {}) ?? 'Cancel',
      'inventory.updateSuccess' =>
        TranslationOverrides.string(_root.$meta, 'inventory.updateSuccess', {}) ?? 'Update Successful',
      'inventory.updateFailed' =>
        TranslationOverrides.string(_root.$meta, 'inventory.updateFailed', {}) ?? 'Update Failed',
      'inventory.quantityMustBeNonNegative' =>
        TranslationOverrides.string(_root.$meta, 'inventory.quantityMustBeNonNegative', {}) ??
            'Quantity must be a non-negative integer',
      'inventory.maxStockReached' =>
        ({required Object max}) =>
            TranslationOverrides.string(_root.$meta, 'inventory.maxStockReached', {'max': max}) ??
            'Max stock reached (${max})',
      'inventory.emptyState' => TranslationOverrides.string(_root.$meta, 'inventory.emptyState', {}) ?? 'No Slots',
      'machines.dashboard' => TranslationOverrides.string(_root.$meta, 'machines.dashboard', {}) ?? 'Dashboard',
      'machines.machineList' => TranslationOverrides.string(_root.$meta, 'machines.machineList', {}) ?? 'Machine List',
      'machines.orderList' => TranslationOverrides.string(_root.$meta, 'machines.orderList', {}) ?? 'Order Records',
      'machines.revenueTrend' =>
        TranslationOverrides.string(_root.$meta, 'machines.revenueTrend', {}) ?? 'Revenue Trend',
      'machines.orderVolume' => TranslationOverrides.string(_root.$meta, 'machines.orderVolume', {}) ?? 'Order Volume',
      'machines.productSalesRatio' =>
        TranslationOverrides.string(_root.$meta, 'machines.productSalesRatio', {}) ?? 'Product Sales Ratio',
      'machines.machineRevenueComparison' =>
        TranslationOverrides.string(_root.$meta, 'machines.machineRevenueComparison', {}) ??
            'Machine Revenue Comparison',
      'machines.totalRevenue' =>
        TranslationOverrides.string(_root.$meta, 'machines.totalRevenue', {}) ?? 'Total Revenue',
      'machines.totalOrders' => TranslationOverrides.string(_root.$meta, 'machines.totalOrders', {}) ?? 'Total Orders',
      'machines.dailyAvgRevenue' =>
        TranslationOverrides.string(_root.$meta, 'machines.dailyAvgRevenue', {}) ?? 'Daily Avg Revenue',
      'machines.growthRate' => TranslationOverrides.string(_root.$meta, 'machines.growthRate', {}) ?? 'Growth Rate',
      'machines.totalMachines' =>
        TranslationOverrides.string(_root.$meta, 'machines.totalMachines', {}) ?? 'Total Machines',
      'machines.noChartData' => TranslationOverrides.string(_root.$meta, 'machines.noChartData', {}) ?? 'No Data',
      'machines.loading' => TranslationOverrides.string(_root.$meta, 'machines.loading', {}) ?? 'Loading',
      'machines.currencyPrefix' => TranslationOverrides.string(_root.$meta, 'machines.currencyPrefix', {}) ?? '¥',
      'machines.emptyState' => TranslationOverrides.string(_root.$meta, 'machines.emptyState', {}) ?? 'No machines',
      'machines.emptyOrders' => TranslationOverrides.string(_root.$meta, 'machines.emptyOrders', {}) ?? 'No orders',
      'machines.timePeriod.day' => TranslationOverrides.string(_root.$meta, 'machines.timePeriod.day', {}) ?? 'Day',
      'machines.timePeriod.week' => TranslationOverrides.string(_root.$meta, 'machines.timePeriod.week', {}) ?? 'Week',
      'machines.timePeriod.month' =>
        TranslationOverrides.string(_root.$meta, 'machines.timePeriod.month', {}) ?? 'Month',
      'machines.timePeriod.quarter' =>
        TranslationOverrides.string(_root.$meta, 'machines.timePeriod.quarter', {}) ?? 'Quarter',
      'machines.timePeriod.year' => TranslationOverrides.string(_root.$meta, 'machines.timePeriod.year', {}) ?? 'Year',
      'machines.total' => TranslationOverrides.string(_root.$meta, 'machines.total', {}) ?? 'Total',
      'machines.orders' => TranslationOverrides.string(_root.$meta, 'machines.orders', {}) ?? 'Orders',
      'maintenance.machineList' =>
        TranslationOverrides.string(_root.$meta, 'maintenance.machineList', {}) ?? 'Maintenance Management',
      'maintenance.faultCount' =>
        TranslationOverrides.string(_root.$meta, 'maintenance.faultCount', {}) ?? 'Fault Count',
      'maintenance.lastFaultAt' =>
        TranslationOverrides.string(_root.$meta, 'maintenance.lastFaultAt', {}) ?? 'Last Fault Time',
      'maintenance.noFaults' => TranslationOverrides.string(_root.$meta, 'maintenance.noFaults', {}) ?? 'No Faults',
      'maintenance.faultList' =>
        TranslationOverrides.string(_root.$meta, 'maintenance.faultList', {}) ?? 'Fault Records',
      'maintenance.faultType' => TranslationOverrides.string(_root.$meta, 'maintenance.faultType', {}) ?? 'Fault Type',
      'maintenance.description' =>
        TranslationOverrides.string(_root.$meta, 'maintenance.description', {}) ?? 'Description',
      'maintenance.occurredAt' =>
        TranslationOverrides.string(_root.$meta, 'maintenance.occurredAt', {}) ?? 'Occurred At',
      'maintenance.pending' => TranslationOverrides.string(_root.$meta, 'maintenance.pending', {}) ?? 'Pending',
      'maintenance.resolved' => TranslationOverrides.string(_root.$meta, 'maintenance.resolved', {}) ?? 'Resolved',
      'maintenance.statusPending' =>
        TranslationOverrides.string(_root.$meta, 'maintenance.statusPending', {}) ?? 'Pending',
      'maintenance.statusResolved' =>
        TranslationOverrides.string(_root.$meta, 'maintenance.statusResolved', {}) ?? 'Resolved',
      'maintenance.statusFault' => TranslationOverrides.string(_root.$meta, 'maintenance.statusFault', {}) ?? 'Fault',
      'maintenance.statusOnline' =>
        TranslationOverrides.string(_root.$meta, 'maintenance.statusOnline', {}) ?? 'Online',
      'maintenance.noFaultRecords' =>
        TranslationOverrides.string(_root.$meta, 'maintenance.noFaultRecords', {}) ?? 'No Fault Records',
      'maintenance.emptyState' =>
        TranslationOverrides.string(_root.$meta, 'maintenance.emptyState', {}) ?? 'No Machines',
      'maintenance.loadFailed' =>
        TranslationOverrides.string(_root.$meta, 'maintenance.loadFailed', {}) ?? 'Load Failed',
      'maintenance.retry' => TranslationOverrides.string(_root.$meta, 'maintenance.retry', {}) ?? 'Retry',
      'navigation.machines' => TranslationOverrides.string(_root.$meta, 'navigation.machines', {}) ?? 'Agent',
      'navigation.inventory' => TranslationOverrides.string(_root.$meta, 'navigation.inventory', {}) ?? 'Inventory',
      'navigation.maintenance' =>
        TranslationOverrides.string(_root.$meta, 'navigation.maintenance', {}) ?? 'Maintenance',
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
      'notifications.title' => TranslationOverrides.string(_root.$meta, 'notifications.title', {}) ?? 'Notifications',
      'notifications.markAllRead' =>
        TranslationOverrides.string(_root.$meta, 'notifications.markAllRead', {}) ?? 'Mark all as read',
      'notifications.empty' =>
        TranslationOverrides.string(_root.$meta, 'notifications.empty', {}) ?? 'No notifications',
      'notifications.unread' => TranslationOverrides.string(_root.$meta, 'notifications.unread', {}) ?? 'Unread',
      'notifications.read' => TranslationOverrides.string(_root.$meta, 'notifications.read', {}) ?? 'Read',
      'notifications.priority.high' =>
        TranslationOverrides.string(_root.$meta, 'notifications.priority.high', {}) ?? 'High',
      'notifications.priority.medium' =>
        TranslationOverrides.string(_root.$meta, 'notifications.priority.medium', {}) ?? 'Medium',
      'notifications.priority.low' =>
        TranslationOverrides.string(_root.$meta, 'notifications.priority.low', {}) ?? 'Low',
      'profile.title' => TranslationOverrides.string(_root.$meta, 'profile.title', {}) ?? 'User Center',
      'profile.notLoggedIn' => TranslationOverrides.string(_root.$meta, 'profile.notLoggedIn', {}) ?? 'Not Logged In',
      'profile.editProfile' => TranslationOverrides.string(_root.$meta, 'profile.editProfile', {}) ?? 'Edit Profile',
      'profile.logout' => TranslationOverrides.string(_root.$meta, 'profile.logout', {}) ?? 'Logout',
      'profile.favoriteDevices' =>
        TranslationOverrides.string(_root.$meta, 'profile.favoriteDevices', {}) ?? 'Favorite Devices',
      'profile.personalInfo' => TranslationOverrides.string(_root.$meta, 'profile.personalInfo', {}) ?? 'Personal Info',
      'profile.confirmLogout' =>
        TranslationOverrides.string(_root.$meta, 'profile.confirmLogout', {}) ?? 'Confirm Logout',
      'profile.confirmLogoutContent' =>
        TranslationOverrides.string(_root.$meta, 'profile.confirmLogoutContent', {}) ??
            'Are you sure you want to logout?',
      'profile.clearCacheConfirm' =>
        TranslationOverrides.string(_root.$meta, 'profile.clearCacheConfirm', {}) ??
            'Are you sure you want to clear all cache data?',
      'profile.noFavoriteDevices' =>
        TranslationOverrides.string(_root.$meta, 'profile.noFavoriteDevices', {}) ?? 'No favorite devices',
      'profile.removeFavorite' =>
        TranslationOverrides.string(_root.$meta, 'profile.removeFavorite', {}) ?? 'Unfavorite',
      'profile.removeFavoriteConfirm' =>
        ({required Object name}) =>
            TranslationOverrides.string(_root.$meta, 'profile.removeFavoriteConfirm', {'name': name}) ??
            'Are you sure you want to unfavorite "${name}"?',
      'profile.appDescription' =>
        TranslationOverrides.string(_root.$meta, 'profile.appDescription', {}) ??
            'A convenient vending machine purchasing application',
      'profile.version' =>
        ({required Object version}) =>
            TranslationOverrides.string(_root.$meta, 'profile.version', {'version': version}) ?? 'Version: ${version}',
      'profile.wallet' => TranslationOverrides.string(_root.$meta, 'profile.wallet', {}) ?? 'My Wallet',
      'profile.coupon' => TranslationOverrides.string(_root.$meta, 'profile.coupon', {}) ?? 'Coupons',
      'profile.feedback' => TranslationOverrides.string(_root.$meta, 'profile.feedback', {}) ?? 'Feedback',
      'profile.cooperation' => TranslationOverrides.string(_root.$meta, 'profile.cooperation', {}) ?? 'Cooperation',
      'profile.about' => TranslationOverrides.string(_root.$meta, 'profile.about', {}) ?? 'About Us',
      'profile.settings' => TranslationOverrides.string(_root.$meta, 'profile.settings', {}) ?? 'Settings',
      'profile.gender.male' => TranslationOverrides.string(_root.$meta, 'profile.gender.male', {}) ?? 'Male',
      'profile.gender.female' => TranslationOverrides.string(_root.$meta, 'profile.gender.female', {}) ?? 'Female',
      'profile.gender.unknown' => TranslationOverrides.string(_root.$meta, 'profile.gender.unknown', {}) ?? 'Secret',
      'profile.info.basic' => TranslationOverrides.string(_root.$meta, 'profile.info.basic', {}) ?? 'Basic Information',
      'profile.info.other' => TranslationOverrides.string(_root.$meta, 'profile.info.other', {}) ?? 'Other Information',
      'profile.info.phone' => TranslationOverrides.string(_root.$meta, 'profile.info.phone', {}) ?? 'Phone Number',
      'profile.info.gender' => TranslationOverrides.string(_root.$meta, 'profile.info.gender', {}) ?? 'Gender',
      'profile.info.birthday' => TranslationOverrides.string(_root.$meta, 'profile.info.birthday', {}) ?? 'Birthday',
      'profile.info.email' => TranslationOverrides.string(_root.$meta, 'profile.info.email', {}) ?? 'Email',
      'profile.info.notSet' => TranslationOverrides.string(_root.$meta, 'profile.info.notSet', {}) ?? 'Not Set',
      'profile.avatar.clickToChange' =>
        TranslationOverrides.string(_root.$meta, 'profile.avatar.clickToChange', {}) ?? 'Click to change avatar',
      'profile.avatar.uploading' =>
        TranslationOverrides.string(_root.$meta, 'profile.avatar.uploading', {}) ??
            'Avatar upload feature is under development',
      'profile.saveSuccess' =>
        TranslationOverrides.string(_root.$meta, 'profile.saveSuccess', {}) ?? 'Saved successfully',
      'profile.saveFailed' =>
        ({required Object error}) =>
            TranslationOverrides.string(_root.$meta, 'profile.saveFailed', {'error': error}) ?? 'Save failed: ${error}',
      'profile.saveInfo' => TranslationOverrides.string(_root.$meta, 'profile.saveInfo', {}) ?? 'Save Information',
      'profile.walletBalance' =>
        TranslationOverrides.string(_root.$meta, 'profile.walletBalance', {}) ?? 'Wallet Balance',
      'profile.coin' => TranslationOverrides.string(_root.$meta, 'profile.coin', {}) ?? 'Points',
      'profile.couponCount' => TranslationOverrides.string(_root.$meta, 'profile.couponCount', {}) ?? 'Coupons',
      'profile.pointsMall' => TranslationOverrides.string(_root.$meta, 'profile.pointsMall', {}) ?? 'Points Mall',
      'profile.walletPage.title' =>
        TranslationOverrides.string(_root.$meta, 'profile.walletPage.title', {}) ?? 'Wallet',
      'profile.walletPage.topUp' =>
        TranslationOverrides.string(_root.$meta, 'profile.walletPage.topUp', {}) ?? 'Top Up',
      'profile.walletPage.balance' =>
        TranslationOverrides.string(_root.$meta, 'profile.walletPage.balance', {}) ?? 'Balance',
      'profile.walletPage.selectAmount' =>
        TranslationOverrides.string(_root.$meta, 'profile.walletPage.selectAmount', {}) ?? 'Select Amount',
      'profile.walletPage.rule' => TranslationOverrides.string(_root.$meta, 'profile.walletPage.rule', {}) ?? 'Rules',
      'profile.walletPage.ruleDesc' =>
        TranslationOverrides.string(_root.$meta, 'profile.walletPage.ruleDesc', {}) ??
            'Top up specific packages to get points. Custom amount does not get points.',
      'profile.walletPage.customAmount' =>
        TranslationOverrides.string(_root.$meta, 'profile.walletPage.customAmount', {}) ?? 'Custom Amount',
      'profile.walletPage.customAmountHint' =>
        TranslationOverrides.string(_root.$meta, 'profile.walletPage.customAmountHint', {}) ??
            'Only for amounts above ¥500',
      'profile.walletPage.realPay' =>
        ({required Object amount}) =>
            TranslationOverrides.string(_root.$meta, 'profile.walletPage.realPay', {'amount': amount}) ??
            'Pay ¥${amount}',
      'profile.walletPage.bonus' =>
        ({required Object amount}) =>
            TranslationOverrides.string(_root.$meta, 'profile.walletPage.bonus', {'amount': amount}) ??
            'Get ${amount} points',
      'profile.walletPage.noBonus' =>
        TranslationOverrides.string(_root.$meta, 'profile.walletPage.noBonus', {}) ?? 'No points',
      'profile.walletPage.history' =>
        TranslationOverrides.string(_root.$meta, 'profile.walletPage.history', {}) ?? 'History',
      'profile.walletPage.historyCount' =>
        ({required Object count}) =>
            TranslationOverrides.string(_root.$meta, 'profile.walletPage.historyCount', {'count': count}) ??
            'Total ${count}',
      'profile.walletPage.noHistory' =>
        TranslationOverrides.string(_root.$meta, 'profile.walletPage.noHistory', {}) ?? 'No transaction history',
      'settings.title' => TranslationOverrides.string(_root.$meta, 'settings.title', {}) ?? 'Settings',
      'settings.general' => TranslationOverrides.string(_root.$meta, 'settings.general', {}) ?? 'General',
      'settings.theme' => TranslationOverrides.string(_root.$meta, 'settings.theme', {}) ?? 'Theme Mode',
      'settings.themeLight' => TranslationOverrides.string(_root.$meta, 'settings.themeLight', {}) ?? 'Light',
      'settings.themeDark' => TranslationOverrides.string(_root.$meta, 'settings.themeDark', {}) ?? 'Dark',
      'settings.themeSystem' => TranslationOverrides.string(_root.$meta, 'settings.themeSystem', {}) ?? 'System',
      'settings.language' => TranslationOverrides.string(_root.$meta, 'settings.language', {}) ?? 'Language',
      'settings.checkUpdate' => TranslationOverrides.string(_root.$meta, 'settings.checkUpdate', {}) ?? 'Check Update',
      'settings.clearCache' => TranslationOverrides.string(_root.$meta, 'settings.clearCache', {}) ?? 'Clear Cache',
      'settings.about' => TranslationOverrides.string(_root.$meta, 'settings.about', {}) ?? 'About',
      'settings.deviceInfo' => TranslationOverrides.string(_root.$meta, 'settings.deviceInfo', {}) ?? 'Device Info',
      'settings.aboutUs' => TranslationOverrides.string(_root.$meta, 'settings.aboutUs', {}) ?? 'About Us',
      'settings.checkingUpdate' =>
        TranslationOverrides.string(_root.$meta, 'settings.checkingUpdate', {}) ?? 'Checking for updates...',
      'settings.cacheCleared' =>
        TranslationOverrides.string(_root.$meta, 'settings.cacheCleared', {}) ?? 'Cache cleared',
      'settings.english' => TranslationOverrides.string(_root.$meta, 'settings.english', {}) ?? 'English',
      'settings.chinese' => TranslationOverrides.string(_root.$meta, 'settings.chinese', {}) ?? 'Simplified Chinese',
      'settings.traditionalChinese' =>
        TranslationOverrides.string(_root.$meta, 'settings.traditionalChinese', {}) ?? 'Traditional Chinese',
      'settings.themeScheme' => TranslationOverrides.string(_root.$meta, 'settings.themeScheme', {}) ?? 'Color Scheme',
      'settings.schemes.shadOrange' =>
        TranslationOverrides.string(_root.$meta, 'settings.schemes.shadOrange', {}) ?? 'Vibrant Orange (ShadOrange)',
      'settings.schemes.shadGreen' =>
        TranslationOverrides.string(_root.$meta, 'settings.schemes.shadGreen', {}) ?? 'Natural Green (ShadGreen)',
      'settings.schemes.bahamaBlue' =>
        TranslationOverrides.string(_root.$meta, 'settings.schemes.bahamaBlue', {}) ?? 'Bahama Blue (BahamaBlue)',
      'settings.schemes.damask' =>
        TranslationOverrides.string(_root.$meta, 'settings.schemes.damask', {}) ?? 'Damask Red (Damask)',
      'settings.appName' => TranslationOverrides.string(_root.$meta, 'settings.appName', {}) ?? 'App Name',
      'settings.packageName' => TranslationOverrides.string(_root.$meta, 'settings.packageName', {}) ?? 'Package Name',
      'settings.versionName' => TranslationOverrides.string(_root.$meta, 'settings.versionName', {}) ?? 'Version Name',
      'settings.buildNumber' => TranslationOverrides.string(_root.$meta, 'settings.buildNumber', {}) ?? 'Build Number',
      'settings.copyright' =>
        TranslationOverrides.string(_root.$meta, 'settings.copyright', {}) ?? '© 2024 Lunchbox Team',
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
