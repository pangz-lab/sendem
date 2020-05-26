import 'package:hive/hive.dart';
import 'package:sendem/app/provider/app_provider_interface.dart';
import 'package:sendem/domain/models/upload_file.dart';
import 'package:sendem/infrastructure/api/api_interface.dart';
import 'package:sendem/infrastructure/api/oshi/oshi_rest_api.dart';
import 'package:sendem/domain/repository/file_upload_repository/file_upload_repository_interface.dart';
import 'package:sendem/infrastructure/persistence/hive/hive_store.dart';
import 'package:sendem/infrastructure/persistence/persistence_interface.dart';

class FileUploadRepository implements FileUploadRepositoryInterface {
  AppProviderInterface provider;
  HiveDataStore _dataRepo;
  HiveDataStoreManager _storeManager;
  OshiRestApi _oshiRestApi;
  String _shelf = "UploadFile";

  FileUploadRepository(this.provider) {
    _dataRepo = this.provider.getInstance("HiveDataStore");
    _oshiRestApi = this.provider.getInstance("OshiRestApi");
    
  }

  Future<dynamic> uploadToServer(UploadFile file) async {
     var uri = await _oshiRestApi.uploadFile(
      ApiRequestParameter(file: file.uri)
    );

    return await _oshiRestApi.getInfo(uri);
  }
  
  Future<int> insert(UploadFile file) async {
    var _data = PersistentDataParam(item: file);
    _storeManager = await _dataRepo.openAndUse(_shelf);
    int _id = await _storeManager.insert(_data);
    Hive.close();

    return _id;
  }

  Future<dynamic> update(int id, UploadFile file) async {
    var data = PersistentDataParam(item: file);
    _storeManager = await _dataRepo.openAndUse(_shelf);
    await _storeManager.update(id, data);
    Hive.close();

    return true;
  }

  Future<UploadFile> select(int id) async {
    _storeManager = await _dataRepo.openAndUse(_shelf);
    UploadFile _file =  await _storeManager.selectAt(id);
    Hive.close();

    return _file;
  }

  Future<dynamic> listenableCollection() {
    return _dataRepo.openAsListenableCollection(_shelf);
  }
  
  bool delete(UploadFile file) {
    return false;
    // return _dataRepo.delete(file);
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