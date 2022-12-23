import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseConnection {
  Future<Database> setDatabase() async {
    var directory = await getApplicationDocumentsDirectory();
    var path = join(directory.path, "mydb");

    var database =
        await openDatabase(path, version: 1, onCreate: Createdatabase);
    return database;
  }

  Future<void> Createdatabase(Database database, int version) async {
    print("Database crete");

    await database.execute(
        "create table income(id INTEGER  PRIMARY KEY AUTOINCREMENT , name TEXT, amount integer,mode TEXT ,date TEXT,time TEXT)");
  }
}
