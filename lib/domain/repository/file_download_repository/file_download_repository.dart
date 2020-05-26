import 'package:sendem/domain/models/transfer_file.dart';
import 'package:sendem/infrastructure/repository/data_repository_interface.dart';
import 'package:sendem/domain/repository/file_repository/file_repository_interface.dart';

class FileDownloadRepository implements FileRepositoryInterface {
  DataRepositoryInterface dataRepo;

  FileDownloadRepository(this.dataRepo);
  
  Future<bool> insert(TransferFile file) async { 
    return this.dataRepo.insert(file);
  }

  bool delete(TransferFile file) {
    return this.dataRepo.delete(file);
  }

  bool updateByFile(int id, TransferFile file) {
    return this.dataRepo.updateByType(id, file);
  }

  int count() {
    return this.dataRepo.count();
  }

  int countBy(dynamic condition) {
    return this.dataRepo.countBy(condition);
  }

  setStorage(String shelf) {
    
  }
}