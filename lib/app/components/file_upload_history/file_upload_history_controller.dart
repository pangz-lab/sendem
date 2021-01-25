import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:sendem/app/services/screen_navigator.dart';
import 'package:sendem/app/provider/app_provider_interface.dart';
import 'package:sendem/domain/services/file_upload/file_upload_service_interface.dart';
import 'package:sendem/domain/services/file_upload/file_upload_service.dart';

class FileUploadHistoryController {
  AppProviderInterface _appProvider;
  FileUploadServiceInterface _fileUploadService;
  
  void setAppProvider(AppProviderInterface provider) {
    _appProvider = provider;
    _fileUploadService = FileUploadService(_appProvider);
  }

  ValueListenable<dynamic> fileUploadListenableCollection() {
    return _fileUploadService.listenableCollection();
  }

  showFileInformation(BuildContext context) {
    ScreenNavigatorService.navigateToFileInformation(context: context);
  }

}