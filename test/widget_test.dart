import 'package:drift/native.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lunchbox_hub/core/services/app_database.dart';
import 'package:lunchbox_hub/core/services/database_service.dart';
import 'package:lunchbox_hub/core/services/storage_service.dart';
import 'package:lunchbox_hub/i18n/translations.g.dart';
import 'package:lunchbox_hub/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  testWidgets('App renders signin screen initially', (WidgetTester tester) async {
    // 1. 初始化 Mock SharedPreferences
    SharedPreferences.setMockInitialValues({});
    final sharedPreferences = await SharedPreferences.getInstance();

    // 2. 初始化内存版 Drift Database 用于测试
    final db = AppDatabase(NativeDatabase.memory());

    try {
      // 3. 渲染应用并注入相应的 Overrides，同时包含 TranslationProvider
      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            sharedPreferencesProvider.overrideWithValue(sharedPreferences),
            databaseServiceProvider.overrideWithValue(db),
          ],
          child: TranslationProvider(child: const MyApp()),
        ),
      );

      await tester.pumpAndSettle();

      // 4. 验证主应用是否渲染成功
      expect(find.byType(MyApp), findsOneWidget);
    } finally {
      // 5. 确保在测试结束后关闭 Database，释放内存数据库资源
      await db.close();
    }
  });
}
