import 'package:sendem/infrastructure/repository/data_repository_interface.dart';

class PersistentStoreInterface {
  PersistentStoreDataManagerInterface use(String storeName) { return null;}
  PersistentStoreDataManagerInterface reset(String storeName) { return null;}
  bool delete(String storeName) { return null;}
}

class PersistentStoreDataManagerInterface implements DataRepositoryInterface {
  dynamic select(dynamic data) { return false;}
  Future<int> insert(dynamic object) async { return Future.value(0);}
  Future<dynamic> update(int id, dynamic data) async { return Future.value(0);}
  bool updateByType(int id, dynamic data) { return false;}
  bool delete(dynamic data) { return false;}
  int count() { return 0;}
  int countBy(dynamic data) { return 0;}
}

class PersistentDataParam {
  dynamic id;
  dynamic item;
  PersistentDataParam({
    this.item,
    this.id,
  });
}