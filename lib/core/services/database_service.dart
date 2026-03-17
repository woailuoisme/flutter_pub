import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'database_service.g.dart';

/// 通知消息表
class Notifications extends Table {
  IntColumn get id => integer()();
  IntColumn get appId => integer()();
  TextColumn get message => text()();
  TextColumn get title => text()();
  IntColumn get priority => integer()();
  DateTimeColumn get date => dateTime()();
  TextColumn get extras => text().nullable()(); // JSON String
  BoolColumn get isRead => boolean().withDefault(const Constant(false))();

  @override
  Set<Column> get primaryKey => {id};
}

/// 数据库类
@DriftDatabase(tables: [Notifications])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 5; // Increment schema version after removing table

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (m) async {
        await m.createAll();
      },
      onUpgrade: (m, from, to) async {
        if (from < 5) {
          // Simplest approach: just ensure notifications table exists if it wasn't there
          // Since we are removing carts, we don't strictly need to drop it unless
          // we want to be very clean, but typically removing from @DriftDatabase
          // and incrementing version is enough for the generated code.
          // For a clean state, we can try to drop if it exists.
        }
      },
    );
  }
}

/// 打开数据库连接
LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    return driftDatabase(
      name: 'db',
      native: const DriftNativeOptions(shareAcrossIsolates: true),
    );
  });
}

/// 数据库服务 Provider
@Riverpod(keepAlive: true)
AppDatabase databaseService(Ref ref) {
  return AppDatabase();
}
