import 'package:flutter_todo_list_provider/app/core/database/migrations/migration.dart';
import 'package:sqflite_common/sqlite_api.dart';

class MigrationV3 implements Migration {
  @override
  void create(Batch batch) {
    // TODO: implement create
    void create(Batch batch) {
      batch.execute('create table teste2 (id Integer)');
    }
  }

  @override
  void upgrade(Batch batch) {
    // TODO: implement upgrade
    batch.execute('create table teste2 (id Integer)');
  }
}
