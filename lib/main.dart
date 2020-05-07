import 'package:flutter/material.dart';
import 'package:sendem/app/views/main_screen.dart';
import 'package:sendem/app/views/file_upload_setting_screen.dart';

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
        scaffoldBackgroundColor: Colors.blue[50],
        canvasColor: const Color(0xFF2196f3),
        textTheme: TextTheme(
          body1: TextStyle(
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
          color: Colors.blue[50],
          iconTheme: IconThemeData(
            color: Colors.blue,
          ),
          textTheme: TextTheme(
            title: TextStyle(
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
      initialRoute: '/',
      routes: <String, WidgetBuilder> {
        '/': (BuildContext context) => MainScreen(),
        '/file_upload_setting': (BuildContext context) => FileUploadScreen(),
        '/download': (BuildContext context) => MainScreen(),
        '/history': (BuildContext context) => MainScreen(),
        '/setting': (BuildContext context) => MainScreen(),
      }
    );
  }
}