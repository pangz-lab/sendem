class DataRepositoryInterface {
  dynamic select(dynamic object) { return false;}
  Future<int> insert(dynamic object) async { return Future.value(0);}
  bool delete(dynamic object) { return false;}
  bool updateByType(int id, dynamic object) { return false;}
  int count() { return 0;}
  int countBy(dynamic condition) { return 0;}
}