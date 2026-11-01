import 'package:drift_flutter/drift_flutter.dart';
import 'package:lunchbox_hub/core/services/app_database.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'database_service.g.dart';

/// 打开本地数据库，drift 懒连接，无需 await。
AppDatabase openAppDatabase() => AppDatabase(driftDatabase(name: 'lunchbox_hub'));

/// 数据库 Provider，由 main() 初始化后注入。
@Riverpod(keepAlive: true)
AppDatabase databaseService(Ref ref) {
  throw UnimplementedError('databaseService has not been overridden');
}
