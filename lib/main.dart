import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:lunchbox_hub/core/services/database_service.dart';
import 'package:lunchbox_hub/core/services/storage_service.dart';
import 'package:lunchbox_hub/core/theme/theme.dart';
import 'package:lunchbox_hub/i18n/translations.g.dart';
import 'package:lunchbox_hub/objectbox.g.dart';
import 'package:lunchbox_hub/routes/app_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toastification/toastification.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final sharedPreferences = await SharedPreferences.getInstance();
  final store = await openStore();

  // 初始化语言设置
  final savedLocale = sharedPreferences.getString('selected_locale');
  if (savedLocale != null) {
    await LocaleSettings.setLocaleRaw(savedLocale);
  } else {
    // 默认设置为中文
    await LocaleSettings.setLocale(AppLocale.zhCn);
  }

  runApp(
    ProviderScope(
      observers: [],
      overrides: [
        sharedPreferencesProvider.overrideWithValue(sharedPreferences),
        databaseServiceProvider.overrideWithValue(store),
      ],
      child: TranslationProvider(child: const MyApp()),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(goRouterProvider);
    final themeNotifier = ref.watch(themeProvider.notifier);
    final themeState = ref.watch(themeProvider);

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return ToastificationWrapper(
          child: MaterialApp.router(
            onGenerateTitle: (context) => t.common.appName,
            theme: themeNotifier.lightTheme,
            darkTheme: themeNotifier.darkTheme,
            themeMode: themeState.mode,
            routerConfig: router,
            debugShowCheckedModeBanner: false,
            locale: TranslationProvider.of(context).flutterLocale,
            supportedLocales: AppLocaleUtils.supportedLocales,
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              FormBuilderLocalizations.delegate,
            ],
          ),
        );
      },
    );
  }
}
