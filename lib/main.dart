import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:provider/provider.dart';
import 'package:sendem/app/components/file_upload/file_upload_controller_helper.dart';
import 'package:sendem/app/provider/data_presistence_provider.dart';
import 'package:sendem/app/setting/screen_route_collection.dart';
import 'package:sendem/domain/models/file_status.dart';
import 'package:sendem/domain/models/file_type.dart';
import 'package:sendem/domain/models/upload_file.dart';
import 'package:sendem/infrastructure/persistence/hive/hive_store.dart';
import 'package:sendem/infrastructure/api/oshi/oshi_rest_api.dart';
void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(UploadFileAdapter());
  Hive.registerAdapter(FileStatusAdapter());
  Hive.registerAdapter(FileTypeAdapter());
  Hive.openBox<UploadFile>("UploadFile");
  
  // await Hive.initFlutter();
  // var db = HiveDataStore();
  // dynamic d = TestData("files", "SampleFile2");
  // await db.open("sendemStore");
  // var dbm = db.use("sendemStore");
  // dbm.insert(d);
  // print(dbm.select(d));
  Map<String, dynamic> dpCollection = {
    'HiveDataStore' : HiveDataStore(),
    'OshiRestApi' : OshiRestApi(),
    'ScreenDataProvider': <String, Object>{
      'fileUploadScreen': FileUploadProvider()
    }
  };
  
  runApp(
    MultiProvider(
      providers: [
        Provider<DataPersistenceProvider>(create: (_) => new DataPersistenceProvider(dpCollection)),
      ],
      child: new MyApp(),
    )
  );
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