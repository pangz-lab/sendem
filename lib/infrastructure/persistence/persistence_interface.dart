import 'package:sendem/domain/repository/common_repository/data_repository_interface.dart';

class PersistentStoreInterface {
  PersistentStoreDataManagerInterface use(String storeName) { return null;}
  PersistentStoreDataManagerInterface reset(String storeName) { return null;}
  bool delete(String storeName) { return null;}
}

class PersistentStoreDataManagerInterface implements DataRepositoryInterface {
  dynamic select(dynamic data) { return false;}
  bool insert(dynamic data) { return false;}
  bool update(dynamic data) { return false;}
  bool updateByType(int id, dynamic data) { return false;}
  bool delete(dynamic data) { return false;}
  int count() { return 0;}
  int countBy(dynamic data) { return 0;}
}