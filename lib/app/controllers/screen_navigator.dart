import 'package:flutter/material.dart';

class ScreenNavigatorController {
  static void navigateTo({BuildContext context, String screenRouteName}) {
    Navigator.pushNamed(context, screenRouteName);
  }
}