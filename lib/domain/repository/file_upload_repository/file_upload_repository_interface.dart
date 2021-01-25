import 'package:flutter/foundation.dart';
import 'package:sendem/domain/models/upload_file.dart';

class FileUploadRepositoryInterface {
  Future<dynamic> openStorage() { return Future.value(0);}
  Future<dynamic> uploadToServer(UploadFile file) { return Future.value(0);}
  Future<int> insert(UploadFile file) {return Future.value(0);}
  Future<dynamic> update(int id, UploadFile file) {return Future.value(0);}
  Future<dynamic> select(int id) {return Future.value(0);}
  ValueListenable<dynamic> listenableCollection() {}
  void closeStorage() {}

  bool delete(UploadFile file) { return false;}
  int count() { return 0;}
  int countBy(dynamic condition) { return 0;}
}