import 'package:flutter_todo_list_provider/app/core/database/migrations/migration.dart';
import 'package:sqflite_common/sqlite_api.dart';

class MigrationV1 implements Migration {
  @override
  void create(Batch batch) {
    // TODO: implement create
    batch.execute('''
      create table todo(
        id Integer primary key autoincrement,
        descricao varchar(500) not null,
        data_hora datetime,
        finalizado Integer
      )
''');
  }

  @override
  void upgrade(Batch batch) {
    // TODO: implement upgrade
  }
}
