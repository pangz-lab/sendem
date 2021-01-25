import 'package:flutter/material.dart';
import 'package:sendem/app/services/screen_navigator.dart';
import 'package:sendem/app/provider/app_provider_interface.dart';
import 'package:sendem/domain/services/file_upload/file_upload_service_interface.dart';
import 'package:sendem/domain/services/file_upload/file_upload_service.dart';

class HistoryController {
  FileUploadServiceInterface _fileUploadService;
  
  void setAppProvider(AppProviderInterface provider) {
    _fileUploadService = FileUploadService(provider);
    _fileUploadService.openStorage();
  }

  goToUploadHistory(BuildContext context) {
    // _fileUploadService.openStorage().then(
    //   (value) {
    ScreenNavigatorService.navigateToUploadHistory(context: context);
    //   }
    // );
    // ScreenNavigatorService.navigateToLoading(context: context);
  }

  goToDownloadHistory(BuildContext context) {
    // _fileUploadService.openStorage().then(
    //   (value) {
        ScreenNavigatorService.navigateToDownloadHistory(context: context);
    //   }
    // );
    // ScreenNavigatorService.navigateToLoading(context: context);
  }
}