
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sendem/app/components/main/main_screen.dart';
import 'package:sendem/app/components/home/home_screen.dart';
import 'package:sendem/app/components/file_upload/file_upload_screen.dart';
import 'package:sendem/app/components/file_download/file_download_screen.dart';
import 'package:sendem/app/components/history/history_screen.dart';
import 'package:sendem/app/components/upload_completed/upload_completed_screen.dart';

class ScreenRouteCollection {

  static const Map<String, Widget> SCREEN_COLLECTION = {
    "home" : HomeScreen(),
    "file_upload" : FileUploadScreen(),
    "file_download" : FileDownloadScreen(),
    "history" : HistoryScreen(),
    "setting" : HistoryScreen(),
    "upload_complete" : UploadCompletedScreen(),
  };

  static const Map<String, String> ROUTE_NAME = {
    "main" : "/",
    "home" : "/home",
    "file_upload" : "/upload",
    "file_download" : "/download",
    "history" : "/history",
    "setting" : "/settings",
    "upload_complete" : "/upload_complete",
  };

  static List<Widget> mainScreen = <Widget>[
    SCREEN_COLLECTION['home'],
    SCREEN_COLLECTION['file_upload'],
    SCREEN_COLLECTION['file_download'],
    SCREEN_COLLECTION['history']
  ];

  static Map<String, WidgetBuilder> appRoutes() {
    return <String, WidgetBuilder>{
      ROUTE_NAME['main']: (BuildContext context) => MainScreen(),
      ROUTE_NAME['home']: (BuildContext context) => SCREEN_COLLECTION['home'],
      ROUTE_NAME['file_upload']: (BuildContext context) => SCREEN_COLLECTION['file_upload'],
      ROUTE_NAME['file_download']: (BuildContext context) => SCREEN_COLLECTION['file_download'],
      ROUTE_NAME['history']: (BuildContext context) => SCREEN_COLLECTION['history'],
      ROUTE_NAME['setting']: (BuildContext context) => SCREEN_COLLECTION['setting'],
      ROUTE_NAME['upload_complete']: (BuildContext context) => SCREEN_COLLECTION['upload_complete'],
    };
  }
}