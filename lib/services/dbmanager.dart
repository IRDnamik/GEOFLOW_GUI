import 'package:sqflite/sqflite.dart';
import '../model/dbsettings.dart';
import 'dart:async';

class DatabaseManager {
  static final DatabaseManager instance = DatabaseManager._privateConstructor();
  static Database? _database;

  DatabaseManager._privateConstructor();

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }

    _database = await _initDatabase();
    return _database!;
  }

// Initialize local database to store variable between two session
  Future<Database> _initDatabase() async {
    String path = await getDatabasesPath();
    path = '$path/my_database.db';

    return await openDatabase(path, version: 1, onCreate: (db, version) async {
      await db.execute('''
        CREATE TABLE dbsettings (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          databaseName TEXT,
          host TEXT,
          dbuser TEXT,
          password TEXT
        )
      ''');

      await db.execute('''
        CREATE TABLE gdrive (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          email TEXT
        )
      ''');
    });
  }

// Insert new connections
  Future<void> insertConnexion(DbSetting? dbsetting, GdriveSetting? gdrive, Database database) async {
    final db = database;

    if (dbsetting != null) {
      await db.insert(
        'dbsettings',
        {
          'databaseName': dbsetting.databaseName,
          'host': dbsetting.host,
          'dbuser': dbsetting.dbuser,
          'password': dbsetting.dbuser
        },
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    } else if (gdrive != null) {
      await db.insert(
        'gdrive',
        {'email': gdrive.email},
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
  }

// Delete  connection
  Future<void> deleteConnection(DbSetting? dbsetting, GdriveSetting? gdrive, Database database) async {
    final db = database;

    if (dbsetting != null) {
      //delete row in database corresponding to dbsetting.databaseName
      await db.delete(
        'dbsettings',
        where: 'databaseName = ?',
        whereArgs: [dbsetting.databaseName],
      ); //delete row in database corresponding to gdrive.email given in parameter
    } else if (gdrive != null) {
      await db.delete(
        'gdrive',
        where: 'email = ?',
        whereArgs: [gdrive.email],
      );
    }
  }
}
