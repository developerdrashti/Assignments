
import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqflite.dart';


import 'databaseconnection.dart';

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

  insertBudget(table, data) async {
    var connection = await database;
    print(" Insert _------succes");

    return await connection?.insert(table, data);
  }

  selectMyBudget(table) async {
    var conncetion = await database;
    print("<---------data fetch send--------->");
    return await conncetion?.rawQuery("select * from $table");
  }

  deleteEntryFrombudget(Table, itemid) async {
    var connection = await database;
    return await connection?.rawDelete("DELETE FROM $Table WHERE id=$itemid");
  }

  fetchEntryByMonth(table, monthname) async {
    var connection = await database;
    return await connection?.query(table,
        columns: ['id', 'amount', 'month'],
        where: 'month=?',
        whereArgs: [monthname]);
  }
}
