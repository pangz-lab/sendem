import 'package:sendem/domain/models/file.dart';

class FileRepositoryInterface {
  bool insert(File file) { return false;}
  bool delete(File file) { return false;}
  bool updateByFile(int id, File file) { return false;}
  int count() { return 0;}
  int countBy(dynamic condition) { return 0;}
}