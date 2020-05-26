import 'package:sendem/domain/models/transfer_file.dart';

class FileRepositoryInterface {
  Future<bool> insert(TransferFile file) {return Future.value(false);}
  bool delete(TransferFile file) { return false;}
  bool updateByFile(int id, TransferFile file) { return false;}
  int count() { return 0;}
  int countBy(dynamic condition) { return 0;}
  setStorage(String shelf) {}
}