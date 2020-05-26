import 'package:sendem/app/provider/app_provider_interface.dart';
import 'package:sendem/domain/models/transfer_file.dart';
import 'package:sendem/infrastructure/persistence/hive/hive_store.dart';
import 'package:sendem/domain/repository/file_repository/file_repository_interface.dart';
import 'package:sendem/infrastructure/persistence/persistence_interface.dart';

class FileRepository implements FileRepositoryInterface {
  AppProviderInterface provider;
  HiveDataStore _dataRepo;
  String _shelf = "TransferFile";

  FileRepository(this.provider) {
    _dataRepo = this.provider.getInstance("HiveDataStore");
  }

  setStorage(String shelf) {
    _shelf = shelf;
  }
  
  Future<int> insert(TransferFile file) async {
    var dbm = await _dataRepo.openAndUse("sendemStore");
    var data = PersistentDataParam( shelf: _shelf, item: file);
    print(">>>Inserted Data!!");
    print(data);
    return dbm.insert(data);
  }

  bool delete(TransferFile file) {
    return false;
    // return _dataRepo.delete(file);
  }

  bool updateByFile(int id, TransferFile file) {
    return false;
    // return _dataRepo.updateByType(id, file);
  }

  int count() {
    return 0;
    // return _dataRepo.count();
  }

  int countBy(dynamic condition) {
    return 0;
    // return _dataRepo.countBy(condition);
  }
}

