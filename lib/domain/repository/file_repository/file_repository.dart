import 'package:sendem/app/provider/app_provider_interface.dart';
import 'package:sendem/domain/models/file.dart';
import 'package:sendem/infrastructure/repository/data_repository_interface.dart';
import 'package:sendem/domain/repository/file_repository/file_repository_interface.dart';

class FileRepository implements FileRepositoryInterface {
  AppProviderInterface provider;
  DataRepositoryInterface dataRepo;

  FileRepository(this.provider) {
    this.dataRepo = this.provider.getInstance("HiveDataProvider");
  }
  
  bool insert(File file) { 
    return this.dataRepo.insert(file);
  }

  bool delete(File file) {
    return this.dataRepo.delete(file);
  }

  bool updateByFile(int id, File file) {
    return this.dataRepo.updateByType(id, file);
  }

  int count() {
    return this.dataRepo.count();
  }

  int countBy(dynamic condition) {
    return this.dataRepo.countBy(condition);
  }
}