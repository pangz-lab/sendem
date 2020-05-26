import 'package:flutter/widgets.dart';
import 'package:sendem/app/components/file_upload/file_upload_controller_helper.dart';
import 'package:sendem/app/provider/app_provider_interface.dart';
import 'package:sendem/app/services/screen_navigator.dart';
import 'package:sendem/domain/models/file_status.dart';
import 'package:sendem/domain/models/file_type.dart';
import 'package:sendem/domain/services/file_upload/file_upload_service.dart';
import 'package:sendem/domain/services/file_upload/file_upload_service_interface.dart';
import 'package:sendem/domain/models/upload_file.dart';

class FileUploadConfirmationController {
  AppProviderInterface _appProvider;
  FileUploadProvider _fileUploadProvider;
  FileUploadServiceInterface _fileUploadService;
  UploadFile _uploadFile;
  int _uploadFileId;

  String get displayFile {
    var _file = _fileUploadProvider.file;
    var _fileComponent = _file.path.split("/");
    var _fileName = _fileComponent[_fileComponent.length-1] ?? "";
    
    return _fileName;
  }

  void setAppProvider(AppProviderInterface provider) {
    _appProvider = provider;
  }

  void setDataProvider(FileUploadProvider provider) {
    _fileUploadProvider = provider;
  }

  void upload(BuildContext context) {
    _saveData().then((v) {
      _fileUploadService.uploadToServer(_uploadFile)
      .then((result) {
        _uploadFile.status = FileStatus.completed;
        _uploadFile.qrData = result['clearNetDownload'];
        _uploadFile.checksum = result['sha1Checksum'];
        _uploadFile.expiryDate = result['expiryDate'];
        _uploadFile.createdDate = result['creationDate'];
        _uploadFile.updatedDate = result['creationDate'];

        _fileUploadService.completeUpload(
          _uploadFileId, _uploadFile
        );
      })
      .catchError((e) {
        _uploadFile.status = FileStatus.completed_with_error;
        _fileUploadService.completeUpload(
          _uploadFileId, _uploadFile
        );
      });
    });

    ScreenNavigatorService.navigateToUploadCompeted(context: context);
  }

  Future<void> _saveData() async {
    var file = await _prepareUpload();
    _uploadFileId = await _fileUploadService.saveUpload(file);
  }

  Future<UploadFile> _prepareUpload() async {
    _fileUploadService = FileUploadService(_appProvider);
    _uploadFile = UploadFile();
    _uploadFile.name = displayFile;
    _uploadFile.size = await _fileUploadProvider.file.length();
    _uploadFile.type = FileType.upload;
    _uploadFile.status = FileStatus.download_inprogress;
    _uploadFile.qrData = "";
    _uploadFile.uri = _fileUploadProvider.file.path;
    _uploadFile.checksum = "";
    _uploadFile.expiryDate = "";
    _uploadFile.createdDate = "";
    _uploadFile.updatedDate = "";

    return _uploadFile;
  }
}