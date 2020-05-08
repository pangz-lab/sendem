
import 'package:flutter/widgets.dart';
import 'package:sendem/app/components/home/home_screen.dart';
import 'package:sendem/app/components/file_upload/file_upload_screen.dart';
import 'package:sendem/app/components/file_download/file_download_screen.dart';
import 'package:sendem/app/components/history/history_screen.dart';

class ScreenRouteCollection {
  static const Map<String, Widget> MAIN_SCREEN = {
    "home" : HomeScreen(),
    "file_upload" : FileUploadScreen(),
    "file_download" : FileDownloadScreen(),
    "history" : HistoryScreen(),
  };

  static const Map<String, String> ROUTE_NAMES = {
    "home" : "/",
  };
}