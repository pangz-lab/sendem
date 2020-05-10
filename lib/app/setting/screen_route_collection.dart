
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sendem/app/components/file_upload_setting/file_upload_setting_screen.dart';
import 'package:sendem/app/components/main/main_screen.dart';
import 'package:sendem/app/components/home/home_screen.dart';
import 'package:sendem/app/components/file_upload/file_upload_screen.dart';
import 'package:sendem/app/components/file_download/file_download_screen.dart';
import 'package:sendem/app/components/history/history_screen.dart';
import 'package:sendem/app/components/upload_completed/upload_completed_screen.dart';

class ScreenRouteCollection {

  static Map<String, Widget> screenCollection = {
    "main" : MainScreen(),
    "home" : HomeScreen(),
    "file_upload" : FileUploadScreen(),
    "file_upload_setting" : FileUploadSettingScreen(),
    "file_upload_completed" : UploadCompletedScreen(),
    "file_download" : FileDownloadScreen(),
    "history" : HistoryScreen(),
    "setting" : HistoryScreen(),
  };

  static const Map<String, String> ROUTE_NAME = {
    "main" : "/",
    "home" : "/home",
    "file_upload" : "/upload",
    "file_upload_setting" : "/upload_setting",
    "file_upload_completed" : "/upload_completed",
    "file_download" : "/download",
    "history" : "/history",
    "setting" : "/settings",
  };

  static List<Widget> mainScreen = <Widget>[
    screenCollection['home'],
    screenCollection['file_upload'],
    screenCollection['file_download'],
    screenCollection['history']
  ];

  // Todop, improve this. Dependent on 'mainScreen'
  static const Map<String, int> mainScreenIndex = <String, int>{
    'home': 0,
    'file_upload' : 1,
    'file_download' : 2,
    'history' : 3
  };

  static Map<String, WidgetBuilder> appRoutes() {
    return <String, WidgetBuilder>{
      ROUTE_NAME['main']: (BuildContext context) => screenCollection['main'],
      ROUTE_NAME['home']: (BuildContext context) => screenCollection['home'],
      ROUTE_NAME['file_upload']: (BuildContext context) => screenCollection['file_upload'],
      ROUTE_NAME['file_upload_setting']: (BuildContext context) => screenCollection['file_upload_setting'],
      ROUTE_NAME['file_upload_completed']: (BuildContext context) => screenCollection['file_upload_completed'],
      ROUTE_NAME['file_download']: (BuildContext context) => screenCollection['file_download'],
      ROUTE_NAME['history']: (BuildContext context) => screenCollection['history'],
      ROUTE_NAME['setting']: (BuildContext context) => screenCollection['setting'],
    };
  }
}