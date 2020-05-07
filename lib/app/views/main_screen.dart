import 'package:flutter/material.dart';
import 'package:sendem/app/views/home_screen.dart';
import 'package:sendem/app/views/file_upload_screen.dart';
import 'package:sendem/app/views/file_download_screen.dart';
import 'package:sendem/app/views/history_screen.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);
  @override
  _MainScreenState createState() => new _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    FileUploadScreen(),
    FileDownloadScreen(),
    HistoryScreen(),
    HomeScreen()
  ];

  void _switchScreen(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
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
            icon: const Icon(Icons.history),
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