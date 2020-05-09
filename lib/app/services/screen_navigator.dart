import 'package:flutter/material.dart';
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

  static void navigateToHome({BuildContext context}) {
    ScreenNavigatorService.navigateToScreen(
      context: context,
      screenRouteName: 'home'
    );
  }

  static void navigateToUpload({BuildContext context}) {
    ScreenNavigatorService.navigateToScreen(
      context: context,
      screenRouteName: 'upload'
    );
  }

  static void navigateToDownload({BuildContext context}) {
    ScreenNavigatorService.navigateToScreen(
      context: context,
      screenRouteName: 'download'
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