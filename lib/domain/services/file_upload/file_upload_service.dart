import 'package:sendem/app/provider/app_provider_interface.dart';
import 'package:sendem/domain/models/file.dart';
import 'package:sendem/domain/repository/file_repository/file_repository.dart';
import 'package:sendem/domain/repository/file_repository/file_repository_interface.dart';
import 'package:sendem/domain/repository/file_upload_repository/file_upload_repository.dart';
import 'package:sendem/domain/repository/file_upload_repository/file_upload_repository_interface.dart';
import 'package:sendem/domain/services/file_upload/file_upload_service_interface.dart';

class FileUploadService implements FileUploadServiceInterface{
  AppProviderInterface provider;
  FileUploadRepositoryInterface fileUploadRepo;
  FileRepositoryInterface fileRepo;

  FileUploadService(this.provider);

  bool startUpload(File file) {
    //Todo
    //1. Create HIVE data repository
    //2. Create OSHI API repository
    this.fileRepo = FileRepository(this.provider);
    this.fileUploadRepo = FileUploadRepository(this.provider);
    this.fileRepo.insert(file);
    return this.fileUploadRepo.upload(file);
  }

  bool pauseUpload(File file) { return false;}
  bool completeUpload(File file) { return false;}
  bool cancelUpload(File file) { return false;}
  bool getUploadSize(File file) { return false;}
  bool getRemainingSize(File file) { return false;}
}