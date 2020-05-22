
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sendem/app/components/file_information/file_information_screen.dart';
import 'package:sendem/app/components/file_upload/file_upload_screen.dart';
import 'package:sendem/app/components/main/main_screen.dart';
import 'package:sendem/app/components/home/home_screen.dart';
import 'package:sendem/app/components/file_upload_confirmation/file_upload_confirmation_screen.dart';
import 'package:sendem/app/components/file_upload_completed/file_upload_completed_screen.dart';
import 'package:sendem/app/components/file_upload_history/file_upload_history_screen.dart';
import 'package:sendem/app/components/file_download/file_download_screen.dart';
import 'package:sendem/app/components/file_download_confirmation/file_download_confirmation_screen.dart';
import 'package:sendem/app/components/file_download_completed/file_download_completed_screen.dart';
import 'package:sendem/app/components/file_download_history/file_download_history_screen.dart';
import 'package:sendem/app/components/history/history_screen.dart';

class ScreenRouteCollection {

  static Map<String, Widget> screenCollection = {
    "main" : MainScreen(),
    "home" : HomeScreen(),
    "history" : HistoryScreen(),
    "setting" : HistoryScreen(),
    "file_upload" : FileUploadScreen(),
    "file_upload_confirmation" : FileUploadConfirmationScreen(),
    "file_upload_completed" : FileUploadCompletedScreen(),
    "file_upload_history" : FileUploadHistoryScreen(),
    "file_download" : FileDownloadScreen(),
    "file_download_confirmation" : FileDownloadConfirmationScreen(),
    "file_download_completed" : FileDownloadCompletedScreen(),
    "file_download_history" : FileDownloadHistoryScreen(),
    "file_information" : FileInformationScreen(),
  };

  static const Map<String, String> ROUTE_NAME = {
    "main" : "/",
    "home" : "/home",
    "history" : "/history",
    "setting" : "/settings",
    "file_upload" : "/upload",
    "file_upload_confirmation" : "/upload_setting",
    "file_upload_completed" : "/upload_completed",
    "file_upload_history" : "/upload_history",
    "file_download" : "/download",
    "file_download_confirmation" : "/download_confirmation",
    "file_download_completed" : "/download_completed",
    "file_download_history" : "/download_history",
    "file_information" : "/file_information",
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
      ROUTE_NAME['history']: (BuildContext context) => screenCollection['history'],
      ROUTE_NAME['setting']: (BuildContext context) => screenCollection['setting'],
      ROUTE_NAME['file_upload']: (BuildContext context) => screenCollection['file_upload'],
      ROUTE_NAME['file_upload_confirmation']: (BuildContext context) => screenCollection['file_upload_confirmation'],
      ROUTE_NAME['file_upload_completed']: (BuildContext context) => screenCollection['file_upload_completed'],
      ROUTE_NAME['file_upload_history']: (BuildContext context) => screenCollection['file_upload_history'],
      ROUTE_NAME['file_download']: (BuildContext context) => screenCollection['file_download'],
      ROUTE_NAME['file_download_confirmation']: (BuildContext context) => screenCollection['file_download_confirmation'],
      ROUTE_NAME['file_download_completed']: (BuildContext context) => screenCollection['file_download_completed'],
      ROUTE_NAME['file_download_history']: (BuildContext context) => screenCollection['file_download_history'],
      ROUTE_NAME['file_information']: (BuildContext context) => screenCollection['file_information'],
    };
  }
}