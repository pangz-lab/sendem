import 'package:sendem/domain/models/upload_file.dart';

class FileUploadServiceInterface {
  
  Future<dynamic> uploadToServer(UploadFile file) { return Future.value(false);}
  Future<int> saveUpload(UploadFile file) { return Future.value(0);}
  Future<bool> completeUpload(int id, UploadFile file) { return Future.value(false);}
  Future<dynamic> listenableCollection() { return Future.value(false);}
  bool pauseUpload(UploadFile file) { return false;}
  bool cancelUpload(UploadFile file) { return false;}
  bool getUploadSize(UploadFile file) { return false;}
  bool getRemainingSize(UploadFile file) { return false;}
}