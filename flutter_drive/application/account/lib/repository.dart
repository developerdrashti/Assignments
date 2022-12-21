import 'package:account/database_connection.dart';
import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqflite.dart';

class Repository {
  late DatabaseConnection databaseConnection;

  Repository() {
    databaseConnection = DatabaseConnection();
  }
  static Database? _database;
  Future<Database?> get database async {
    if (_database != null) {
      return _database;
    } else {
      _database = await databaseConnection.setDatabase();
      return _database;
    }
  }

  insertexpence(table, data) async {
    var connection = await database;
    print(" Insert _------succes");

    return await connection?.insert(table, data);
  }

  insertBudget(table, data) async {
    var connection = await database;
    print(" Insert _------succes");

    return await connection?.insert(table, data);
  }

  insertSAvingss(table, data) async {
    var connection = await database;
    print(" Insert _------succes");

    return await connection?.insert(table, data);
  }

  selectMyexpence(table) async {
    var conncetion = await database;
    print("<---------data fetch send--------->");
    return await conncetion?.rawQuery("select * from $table");
  }

  selectMysaving(table) async {
    var conncetion = await database;
    print("<---------data fetch send--------->");
    return await conncetion?.rawQuery("select * from $table");
  }

  selectMyBudget(table) async {
    var conncetion = await database;
    print("<---------data fetch send--------->");
    return await conncetion?.rawQuery("select * from $table");
  }

  deleteEntryFromexpence(Table, itemid) async {
    var connection = await database;
    return await connection?.rawDelete("DELETE FROM $Table WHERE id=$itemid");
  }

  deleteEntryFromsaving(Table, itemid) async {
    var connection = await database;
    return await connection?.rawDelete("DELETE FROM $Table WHERE id=$itemid");
  }

  deleteEntryFrombudget(Table, itemid) async {
    var connection = await database;
    return await connection?.rawDelete("DELETE FROM $Table WHERE id=$itemid");
  }

  fetchEntryBytitle(table, titlename) async {
    var connection = await database;
    return await connection?.query(table,
        columns: ['id', 'amount', 'month', 'title'],
        where: 'title=?',
        whereArgs: [titlename]);
  }

  fetchEntryByMonth(table, monthname) async {
    var connection = await database;
    return await connection?.query(table,
        columns: ['id', 'amount', 'month'],
        where: 'month=?',
        whereArgs: [monthname]);
  }
}
