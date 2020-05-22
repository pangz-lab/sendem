import 'dart:core';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sendem/app/provider/data_presistence_provider.dart';
import 'package:sendem/app/setting/screen_route_collection.dart';
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

    // store.openAndUse("sendemStore").then((dbm) {
    //   dynamic d = PersistentDataParam( shelf: "shelf1", item: "Shelfvalue1");
    //   dbm.insert(d);
    //   print(dbm.select(d));
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