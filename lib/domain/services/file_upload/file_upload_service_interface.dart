import 'package:flutter/foundation.dart';
import 'package:sendem/domain/models/upload_file.dart';

class FileUploadServiceInterface {
  Future<dynamic> openStorage() { return Future.value(0);}
  Future<dynamic> uploadToServer(UploadFile file) { return Future.value(false);}
  Future<int> saveUpload(UploadFile file) { return Future.value(0);}
  Future<bool> completeUpload(int id, UploadFile file) { return Future.value(false);}
  ValueListenable<dynamic> listenableCollection() { return ValueNotifier("");}
  void closeStorage() {}
  bool pauseUpload(UploadFile file) { return false;}
  bool cancelUpload(UploadFile file) { return false;}
  bool getUploadSize(UploadFile file) { return false;}
  bool getRemainingSize(UploadFile file) { return false;}
}