import 'dart:io';
import 'package:hive/hive.dart';
import 'package:sendem/infrastructure/persistence/persistence_interface.dart';

class HiveDataStore implements PersistentStoreInterface {
  dynamic store;
  String storeDirPath;

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

  Future<dynamic> open(String storeName) async {
    return await Hive.openBox(storeName);
  }
  
  void close(String storeName) {
    Hive.box(storeName).close();
  }
}

class HiveDataStoreManager implements PersistentStoreDataManagerInterface {
  Box<dynamic> box;
  HiveDataStoreManager(this.box);

  dynamic select(dynamic object) {
    assert(object.key != null);
    return this.box.get(object.key);
  }

  bool insert(dynamic object) {
    assert(object.key != null);
    assert(object.value != null);

    this.box.put(object.key, object.value)
    .catchError((e) {
      throw new HiveDataStoreInsertionError();
    });

    return true;
  }

  bool update(dynamic data) { return false;}
  bool updateByType(int id, dynamic data) { return false;}
  bool delete(dynamic data) { return false;}
  int count() { return 0;}
  int countBy(dynamic data) { return 0;}
}

class HiveDataStoreException extends IOException {}
class HiveDataStoreInsertionError extends Error {}