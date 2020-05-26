import 'dart:io';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sendem/infrastructure/persistence/persistence_interface.dart';

class HiveDataStore implements PersistentStoreInterface {
  dynamic store;

  PersistentStoreDataManagerInterface use(String storeName) {
    return HiveDataStoreManager(Hive.box(storeName));
  }

  PersistentStoreDataManagerInterface reset(String storeName) {
    this.store = Hive.box(storeName);
    this.store.clear()
    ..catchError((e) {
      throw new HiveDataStoreException();
    });
    return HiveDataStoreManager(store);
  }

  bool delete(String storeName) {
    Hive.box(storeName).deleteFromDisk()
    ..catchError((e) {
      throw new HiveDataStoreException();
    });
    return true;
  }

  Future<PersistentStoreDataManagerInterface> openAndUse(String storeName) async {
    return HiveDataStoreManager(await Hive.openBox(storeName));
  }

  Future<void> connect() async {
    await Hive.initFlutter();
  }
  
  void close(String storeName) {
    Hive.box(storeName).close();
  }
}

class HiveDataStoreManager implements PersistentStoreDataManagerInterface {
  Box<dynamic> box;
  HiveDataStoreManager(this.box);

  dynamic select(dynamic object) {
    assert(object.runtimeType == PersistentDataParam);
    return this.box.get(object.shelf);
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