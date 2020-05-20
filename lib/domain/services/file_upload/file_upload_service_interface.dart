import 'package:sendem/domain/models/file.dart';

class FileUploadServiceInterface {
  bool startUpload(File file) { return false;}
  bool pauseUpload(File file) { return false;}
  bool completeUpload(File file) { return false;}
  bool cancelUpload(File file) { return false;}
  bool getUploadSize(File file) { return false;}
  bool getRemainingSize(File file) { return false;}
}