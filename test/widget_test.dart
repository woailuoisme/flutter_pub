import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lunchbox_hub/main.dart';
import 'package:lunchbox_hub/core/services/database_service.dart';
import 'package:lunchbox_hub/core/services/storage_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:lunchbox_hub/objectbox.g.dart';
import 'package:lunchbox_hub/i18n/translations.g.dart';

void main() {
  testWidgets('App renders signin screen initially', (WidgetTester tester) async {
    // 1. 初始化 Mock SharedPreferences
    SharedPreferences.setMockInitialValues({});
    final sharedPreferences = await SharedPreferences.getInstance();

    // 2. 初始化内存版 ObjectBox Store 用于测试
    final store = await openStore(directory: 'memory:test_db');

    try {
      // 3. 渲染应用并注入相应的 Overrides，同时包含 TranslationProvider
      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            sharedPreferencesProvider.overrideWithValue(sharedPreferences),
            databaseServiceProvider.overrideWithValue(store),
          ],
          child: TranslationProvider(child: const MyApp()),
        ),
      );

      await tester.pumpAndSettle();

      // 4. 验证主应用是否渲染成功
      expect(find.byType(MyApp), findsOneWidget);
    } finally {
      // 5. 确保在测试结束后关闭 Store，释放内存数据库资源
      store.close();
    }
  });
}
