import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

class DatabaseConnection {
  Future<Database> setDatabase() async {
    var directory = await getApplicationDocumentsDirectory();
    var path = join(directory.path, "budget_expense");

    var database =
        await openDatabase(path, version: 1, onCreate: Createdatabase);
    return database;
  }

  Future<void> Createdatabase(Database database, int version) async {
    print("Database crete");
    String sql =
        "create table my_budget(id INTEGER  PRIMARY KEY AUTOINCREMENT , month TEXT, amount INTEGER,created_at TEXT )";
    await database.execute(sql);
    String sql1 =
        "create table my_saving(id INTEGER  PRIMARY KEY AUTOINCREMENT ,  title TEXT ,amount INTEGER , type TEXT )";
    await database.execute(sql1);
    String sql2 =
        "create table my_expence(id INTEGER  PRIMARY KEY AUTOINCREMENT , month TEXT, title TEXT ,amount INTEGER,created_at TEXT )";
    await database.execute(sql2);
  }
}
