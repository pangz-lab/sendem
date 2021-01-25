import 'dart:io';
import 'package:sendem/infrastructure/persistence/persistence_interface.dart';
import 'package:sqflite/sqflite.dart';

class SqfliteDataStore implements PersistentStoreInterface {
  Database _database;
  String dbPath;
  String dbName;

  SqfliteDataStore({
    this.dbPath
  });

  Future<void> connect() async {
    _database = await openDatabase(
      this.dbPath,
      version: 1,
      onCreate: (Database db, int version) async {
      await db.execute(
          'CREATE TABLE Test (id INTEGER PRIMARY KEY, name TEXT, value INTEGER, num REAL)');
      }
    );
    SqfliteStoreManager(_database);
  }

  void delete() async {
    await deleteDatabase(this.dbPath);
  }
  
  void close() async {
    await _database.close();
  }
}

class SqfliteStoreManager implements PersistentStoreDataManagerInterface {
  Database db;
  SqfliteStoreManager(this.db);

  dynamic select(dynamic object) {
    PersistentDataParam param = object;
    assert(object.runtimeType == PersistentDataParam);
    assert(param.table);
    return this.box.get(object.item);
  }

  dynamic selectAt(int index) {
    return this.box.getAt(index);
  }

  Future<int> insert(dynamic object) async {
    assert(object.runtimeType == PersistentDataParam);
    return await this.box.add(object.item)
    .catchError((e) {
      throw new HiveDataStoreInsertError();
    });
  }

  Future<dynamic> update(int id, dynamic object) async {
    assert(object.runtimeType == PersistentDataParam);
    return await this.box.put(id, object.item)
    .catchError((e) {
      throw new HiveDataStoreUpdateError();
    });
  }

  bool updateByType(int id, dynamic data) { return false;}
  bool delete(dynamic data) { return false;}
  int count() { return 0;}
  int countBy(dynamic data) { return 0;}
}

class HiveDataStoreException extends IOException {}
class HiveDataStoreInsertError extends Error {}
class HiveDataStoreUpdateError extends Error {}