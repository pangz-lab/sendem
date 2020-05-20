class DataRepositoryInterface {
  dynamic select(dynamic object) { return false;}
  bool insert(dynamic object) { return false;}
  bool delete(dynamic object) { return false;}
  bool updateByType(int id, dynamic object) { return false;}
  int count() { return 0;}
  int countBy(dynamic condition) { return 0;}
}