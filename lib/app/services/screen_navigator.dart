import 'package:flutter/material.dart';
import 'package:sendem/app/components/main/main_screen.dart';
import 'package:sendem/app/setting/screen_route_collection.dart';

class ScreenNavigatorService {

  static void showSnackbarInText({
    BuildContext context,
    String message
  }) {
    final snackBar = SnackBar(content: Text(message));
    Scaffold.of(context).showSnackBar(snackBar);
  }

  static void navigateTo({
    BuildContext context,
    String screenRouteName,
    Object screenArguments
    }) {
    Navigator.pushNamed(
      context,
      screenRouteName,
      arguments: screenArguments
    );
  }

  static void navigateToScreen({
    BuildContext context,
    String screenRouteName,
    Object screenArguments
  }) {
    ScreenNavigatorService.navigateTo(
      context: context,
      screenRouteName: ScreenRouteCollection.ROUTE_NAME[screenRouteName],
      screenArguments: screenArguments
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

  static void navigateToHome({BuildContext context, Object screenArguments}) {
    ScreenNavigatorService.navigateToScreen(
      context: context,
      screenRouteName: 'home',
      screenArguments: screenArguments
    );
  }

  static void navigateToUpload({BuildContext context, Object screenArguments}) {
    ScreenNavigatorService.navigateToScreen(
      context: context,
      screenRouteName: 'file_upload',
      screenArguments: screenArguments
    );
  }

  static void navigateToUploadConfirmation({BuildContext context, Object screenArguments}) {
    ScreenNavigatorService.navigateToScreen(
      context: context,
      screenRouteName: 'file_upload_confirmation',
      screenArguments: screenArguments
    );
  }

  static void navigateToUploadCompleted({BuildContext context, Object screenArguments}) {
    ScreenNavigatorService.navigateToScreen(
      context: context,
      screenRouteName: 'file_upload_completed',
      screenArguments: screenArguments
    );
  }

  static void navigateToUploadHistory({BuildContext context, Object screenArguments}) {
    ScreenNavigatorService.navigateToScreen(
      context: context,
      screenRouteName: 'file_upload_history',
      screenArguments: screenArguments
    );
  }

  static void navigateToDownload({BuildContext context, Object screenArguments}) {
    ScreenNavigatorService.navigateToScreen(
      context: context,
      screenRouteName: 'file_download',
      screenArguments: screenArguments
    );
  }

  static void navigateToDownloadConfirmation({BuildContext context, Object screenArguments}) {
    ScreenNavigatorService.navigateToScreen(
      context: context,
      screenRouteName: 'file_download_confirmation',
      screenArguments: screenArguments
    );
  }

  static void navigateToDownloadCompleted({BuildContext context, Object screenArguments}) {
    ScreenNavigatorService.navigateToScreen(
      context: context,
      screenRouteName: 'file_download_completed',
      screenArguments: screenArguments
    );
  }

  static void navigateToDownloadHistory({BuildContext context, Object screenArguments}) {
    ScreenNavigatorService.navigateToScreen(
      context: context,
      screenRouteName: 'file_download_history',
      screenArguments: screenArguments
    );
  }

  static void navigateToHistory({BuildContext context, Object screenArguments}) {
    ScreenNavigatorService.navigateToScreen(
      context: context,
      screenRouteName: 'history',
      screenArguments: screenArguments
    );
  }

  static void navigateToFileInformation({BuildContext context, Object screenArguments}) {
    ScreenNavigatorService.navigateToScreen(
      context: context,
      screenRouteName: 'file_information',
      screenArguments: screenArguments
    );
  }
}