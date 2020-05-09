import 'package:flutter/material.dart';
import 'package:sendem/app/setting/screen_route_collection.dart';


// import 'package:sendem/app/components/home/home_screen.dart';
// import 'package:sendem/app/components/file_upload/file_upload_screen.dart';
// import 'package:sendem/app/components/file_download/file_download_screen.dart';
// import 'package:sendem/app/components/history/history_screen.dart';
// import 'package:sendem/app/components/upload_completed/upload_completed_screen.dart';
void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'SendEm Files',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF2196f3),
        accentColor: const Color(0xfffb7426),
        scaffoldBackgroundColor: Colors.white,
        canvasColor: const Color(0xFF2196f3),
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: const Color(0xFF2196f3),
          )
        ),
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyle(
            color: const Color(0xFF2196f3),
          )
        ),
        appBarTheme: AppBarTheme(
          elevation: 0.0,
          color: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.blue,
          ),
          textTheme: TextTheme(
            headline6: TextStyle(
              color: const Color(0xFF2196f3),
              fontSize: 22.0
            )
          )
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: const Color(0xFF2196f3),
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      initialRoute: ScreenRouteCollection.ROUTE_NAME['main'],
      routes: ScreenRouteCollection.appRoutes()
    );
  }
}