import 'package:drift/drift.dart';

part 'app_database.g.dart';

/// 通知消息条目表
class NotificationEntries extends Table {
  IntColumn get id => integer()();
  IntColumn get appId => integer()();
  TextColumn get message => text()();
  TextColumn get title => text()();
  IntColumn get priority => integer()();
  DateTimeColumn get date => dateTime()();
  TextColumn get extras => text().nullable()();
  BoolColumn get isRead => boolean().withDefault(const Constant(false))();

  @override
  Set<Column> get primaryKey => {id};
}

/// 本地数据库
@DriftDatabase(tables: [NotificationEntries])
class AppDatabase extends _$AppDatabase {
  AppDatabase(super.e);

  @override
  int get schemaVersion => 1;
}

