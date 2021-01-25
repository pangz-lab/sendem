import 'package:flutter/foundation.dart';
import 'package:sendem/app/provider/app_provider_interface.dart';
import 'package:sendem/domain/models/upload_file.dart';
import 'package:sendem/domain/repository/file_upload_repository/file_upload_repository.dart';
import 'package:sendem/domain/repository/file_upload_repository/file_upload_repository_interface.dart';
import 'package:sendem/domain/services/file_upload/file_upload_service_interface.dart';

class FileUploadService implements FileUploadServiceInterface{
  AppProviderInterface provider;
  FileUploadRepositoryInterface _fileUploadRepo;

  FileUploadService(this.provider) {
    _fileUploadRepo = FileUploadRepository(this.provider);
  }

  Future<dynamic> openStorage() {
    return _fileUploadRepo.openStorage();
  }

  void closeStorage() {
    _fileUploadRepo.closeStorage();
  }

  Future<dynamic> uploadToServer(UploadFile file) async {
    return await _fileUploadRepo.uploadToServer(file);
  }

  Future<int> saveUpload(UploadFile file) async {
    return await _fileUploadRepo.insert(file);
  }

  Future<bool> completeUpload(int id, UploadFile file) async {
    return await _fileUploadRepo.update(id, file);
  }
  
  ValueListenable<dynamic> listenableCollection() {
    return _fileUploadRepo.listenableCollection();
  }

  bool pauseUpload(UploadFile file) { return false;}
  bool cancelUpload(UploadFile file) { return false;}
  bool getUploadSize(UploadFile file) { return false;}
  bool getRemainingSize(UploadFile file) { return false;}
}