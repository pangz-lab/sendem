import 'dart:io';

import 'package:hive/hive.dart';
import 'package:sendem/infrastructure/persistence/persistence_interface.dart';

class HiveDataStore implements PersistentStoreInterface {
  String store;
  PersistentStoreDataManagerInterface create(String storeName) {
    this.store = storeName;
    return HiveDataStoreManager(Hive.box(this.store));
  }

  Future<PersistentStoreDataManagerInterface> reset(String storeName) async {
    this.store = storeName;
    return await Hive.deleteBoxFromDisk(this.store)
    .catchError(() {
      throw new HiveDataStoreException();
    }).then((data) {
      return HiveDataStoreManager(Hive.box(this.store));
    });
  }

  Future<bool> delete(String storeName) async {
    return await Hive.deleteBoxFromDisk(this.store)
    .catchError(() {
      throw new HiveDataStoreException();
    }).then((data) {
      return true;
    });
  }
}

class HiveDataStoreManager implements PersistentStoreDataManagerInterface {
  Box<dynamic> box;
  HiveDataStoreManager(this.box);
  dynamic select(dynamic data) { return false;}
  bool insert(dynamic data) { return false;}
  bool update(dynamic data) { return false;}
  bool updateByType(int id, dynamic data) { return false;}
  bool delete(dynamic data) { return false;}
  int count() { return 0;}
  int countBy(dynamic data) { return 0;}
}

class HiveDataStoreException extends IOException {}