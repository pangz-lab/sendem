import 'package:sendem/domain/models/upload_file.dart';

class FileUploadServiceInterface {
  
  Future<dynamic> uploadToServer(UploadFile file) async { return Future.value(false);}
  Future<int> saveUpload(UploadFile file) async { return Future.value(0);}
  Future<bool> completeUpload(int id, UploadFile file) async { return Future.value(false);}
  bool startUpload(UploadFile file) { return false;}
  bool pauseUpload(UploadFile file) { return false;}
  bool cancelUpload(UploadFile file) { return false;}
  bool getUploadSize(UploadFile file) { return false;}
  bool getRemainingSize(UploadFile file) { return false;}
}