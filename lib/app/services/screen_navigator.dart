import 'package:flutter/material.dart';
import 'package:sendem/app/components/main/main_screen.dart';
import 'package:sendem/app/setting/screen_route_collection.dart';

class ScreenNavigatorService {

  static void navigateTo({BuildContext context, String screenRouteName}) {
    Navigator.pushNamed(context, screenRouteName);
  }

  static void navigateToScreen({BuildContext context, String screenRouteName}) {
    ScreenNavigatorService.navigateTo(
      context: context,
      screenRouteName: ScreenRouteCollection.ROUTE_NAME[screenRouteName]
    );
  }

  static void navigateToMain({BuildContext context, int screenIndex }) {
    int defaultIndex = screenIndex ?? ScreenRouteCollection.mainScreenIndex['home'];

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MainScreen(screenIndex: defaultIndex)
      ),
    );
  }

  static void navigateToHome({BuildContext context}) {
    ScreenNavigatorService.navigateToScreen(
      context: context,
      screenRouteName: 'home'
    );
  }

  static void navigateToUpload({BuildContext context}) {
    ScreenNavigatorService.navigateToScreen(
      context: context,
      screenRouteName: 'file_upload'
    );
  }

  static void navigateToUploadConfirmation({BuildContext context}) {
    ScreenNavigatorService.navigateToScreen(
      context: context,
      screenRouteName: 'file_upload_confirmation'
    );
  }

  static void navigateToUploadCompeted({BuildContext context}) {
    ScreenNavigatorService.navigateToScreen(
      context: context,
      screenRouteName: 'file_upload_completed'
    );
  }

  static void navigateToDownload({BuildContext context}) {
    ScreenNavigatorService.navigateToScreen(
      context: context,
      screenRouteName: 'file_download'
    );
  }

  static void navigateToDownloadConfirmation({BuildContext context}) {
    ScreenNavigatorService.navigateToScreen(
      context: context,
      screenRouteName: 'file_download_confirmation'
    );
  }

  static void navigateToDownloadCompleted({BuildContext context}) {
    ScreenNavigatorService.navigateToScreen(
      context: context,
      screenRouteName: 'file_download_completed'
    );
  }

  static void navigateToHistory({BuildContext context}) {
    ScreenNavigatorService.navigateToScreen(
      context: context,
      screenRouteName: 'history'
    );
  }

  static void navigateToUploadComplete({BuildContext context}) {
    ScreenNavigatorService.navigateToScreen(
      context: context,
      screenRouteName: 'upload_complete'
    );
  }
}