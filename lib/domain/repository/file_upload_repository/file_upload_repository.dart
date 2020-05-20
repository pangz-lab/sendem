import 'package:sendem/app/provider/app_provider_interface.dart';
import 'package:sendem/domain/models/file.dart';
import 'package:sendem/domain/repository/common_repository/api_repository_interface.dart';
import 'package:sendem/domain/repository/file_upload_repository/file_upload_repository_interface.dart';

class FileUploadRepository implements FileUploadRepositoryInterface {
  AppProviderInterface provider;
  ApiRepositoryInterface apiRepo;

  FileUploadRepository(this.provider) {
    this.apiRepo = this.provider.getInstance("UploadServiceProvider");
  }

  bool upload(File file) {
    return this.apiRepo.uploadFile(file);
  }
}