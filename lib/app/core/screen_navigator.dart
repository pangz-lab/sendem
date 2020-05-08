import 'package:flutter/material.dart';
import 'package:sendem/app/setting/screen_route_collection.dart';

class ScreenNavigatorController {
  static void navigateTo({BuildContext context, String screenRouteName}) {
    Navigator.pushNamed(context, screenRouteName);
  }

  static void navigateToHome({BuildContext context}) {
    ScreenNavigatorController.navigateTo(
      context: context,
      screenRouteName: ScreenRouteCollection.ROUTE_NAMES['home']
    );
  }
}