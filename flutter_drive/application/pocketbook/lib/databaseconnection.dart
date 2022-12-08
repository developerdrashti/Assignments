import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseConnection {
  Future<Database> setDatabase() async {
    var directory = await getApplicationDocumentsDirectory();
    var path = join(directory.path, "income");

    var database =
        await openDatabase(path, version: 1, onCreate: Createdatabase);
    return database;
  }

  Future<void> Createdatabase(Database database, int version) async {
    print("Database crete");

    await database.execute(
        "create table my_budget(id INTEGER  PRIMARY KEY AUTOINCREMENT , month TEXT, amount integer,created_at TEXT ,date integer,time integerd`)");

    await database.execute(
        "create table my_expence(id INTEGER PRIMERY KEY auto_increment, month TEXT,title TEXT, amount Text , created_at  INTEGER DEFAULT(cast(strftime('%s','now')as int)))");
    await database.execute(
        "create table my_saving(id INTEGER PRIMERY KEY auto_increment, month TEXT,title TEXT, amount Text , created_at  INTEGER DEFAULT(cast(strftime('%s','now')as int)))");
  }
}
