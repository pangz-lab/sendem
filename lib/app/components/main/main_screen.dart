import 'dart:core';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sendem/app/provider/data_presistence_provider.dart';
import 'package:sendem/app/setting/screen_route_collection.dart';
import 'package:sendem/domain/models/file_status.dart';
import 'package:sendem/domain/models/file_type.dart';
import 'package:sendem/domain/models/upload_file.dart';
import 'package:sendem/infrastructure/persistence/persistence_interface.dart';
import 'package:sendem/infrastructure/api/api_interface.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainScreen extends StatefulWidget {
  final int screenIndex;
  MainScreen({Key key, this.screenIndex = 0}) : super(key: key);
  @override
  _MainScreenState createState() => new _MainScreenState(index: screenIndex);
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex;
  static List<Widget> _widgetOptions = ScreenRouteCollection.mainScreen;

  @override
  _MainScreenState({int index}) {
    _selectedIndex = index;
  }

  void _switchScreen(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // var dpProvider = Provider.of<DataPersistenceProvider>(context, listen: false);
    // var store = dpProvider.getInstance("HiveDataStore");
    // var oshiRest = dpProvider.getInstance("OshiRestApi");

    // store.openAndUse("UploadFile").then((dbm) {
    // var _uploadFile = UploadFile();
    // _uploadFile.name = "test1";
    // _uploadFile.size = 12;
    // _uploadFile.type = FileType.upload;
    // _uploadFile.status = FileStatus.download_inprogress;
    // _uploadFile.qrData = "";
    // _uploadFile.uri = "/usr/local/rms";
    // _uploadFile.checksum = "";
    // _uploadFile.expiryDate = "";
    // _uploadFile.createdDate = "";
    // _uploadFile.updatedDate = "";

    //   dynamic d = PersistentDataParam( shelf: "shelf1", item: _uploadFile);
    //   dbm.insert(d);
    //   var rr = dbm.selectAt(0);
    //   print(rr.name);
    // });

    // oshiRest.uploadFile(
    //   ApiRequestParameter(
    //     file: '/storage/emulated/0/Documents/MockApp/projects.json'
    //   )
    // ).then((uri) {
    //   oshiRest.getInfo(uri);
    // });
    
    
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('SendEm'),
        actions: <Widget>[
          const Icon(Icons.settings),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
  
      bottomNavigationBar: BottomNavigationBar(
        onTap: _switchScreen,
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.blue[200],
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            title: Text('Home'),
          ),
  
          BottomNavigationBarItem(
            icon: const Icon(Icons.cloud_upload),
            title: Text('Upload'),
          ),
  
          BottomNavigationBarItem(
            icon: const Icon(Icons.file_download),
            title: Text('Download'),
          ),
  
          BottomNavigationBarItem(
            // icon: const Icon(Icons.history),
            icon: const FaIcon(FontAwesomeIcons.ad),
            title: Text('History'),
          ),
  
          // BottomNavigationBarItem(
          //   icon: const Icon(Icons.settings),
          //   title: Text('Setting'),
          // )
        ]    
      ),
    );
  }
}