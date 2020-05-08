import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:file_picker/file_picker.dart';
import 'package:html/parser.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //dc
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class FileTransfer extends StatelessWidget {
  static const String _tempPath = '/storage/emulated/0/Documents/MockApp/projects.json';
  static const String _oshiURI = 'https://oshi.at';
  const FileTransfer({Key key}) : super(key: key);
  

  void _sendFile(String filename, String url) async {
    var file = new File(filename);
    var exist = await file.exists();
    var request = http.MultipartRequest('POST', Uri.parse(url));
    request.files.add(
      await http.MultipartFile.fromPath(
        'text',
        filename
      )
    );
    /*
    var res = await request.send();
    print(res);
    var uriList = await res.stream.bytesToString();
    print(uriList);
    */
    // _getHtmlPage('https://oshi.at/a/075cdfe65301c488eeb350f19bbcf31422390ab0');
    // _getHtmlPage('https://oshi.at/a/a5b418d22e0ca71918f78aa12a716d6cfd355c91');

    await _extractUploadInfo();
    log('End');
  }

  Future<String> _getHtmlPage(String uri) async {
    var response = await http.get(uri);
    String htmlToParse = '';
    if(response.statusCode == 200){
      htmlToParse = response.body;
    }
    return htmlToParse;
  }

  Future<void> _extractUploadInfo() async {
    var page = await _getHtmlPage('https://oshi.at/a/a5b418d22e0ca71918f78aa12a716d6cfd355c91');
    var document = parse(page);

    print("HTML Content >>>>>>>>>>> ");
    print("Clearnet DL");
    print(document.getElementsByClassName("col text-left").elementAt(0).firstChild.attributes['href']);
    print("Tor DL");
    print(document.getElementsByClassName("col text-left").elementAt(1).firstChild.attributes['href']);
    
    print("Size");
    print(document.getElementsByClassName("col text-left").elementAt(2).innerHtml);

    print("Sha1CheckSum");
    print(document.getElementsByClassName("col text-left").elementAt(4).innerHtml);

    print("Created Date");
    print(document.getElementsByClassName("col text-left").elementAt(5).innerHtml);

    print("Expiry Date");
    print(document.getElementsByClassName("col text-left").elementAt(6).innerHtml);
  }

  void _requestTempDirectory() {
    log("button is clicked!");
    _sendFile(_tempPath, _oshiURI);
  }

  void _filePick() async {
    File file = await FilePicker.getFile();
    print(file.path);
    _sendFile(file.path, _oshiURI);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('File Sending'),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              RaisedButton(
                onPressed: _filePick,
                child: Text("Choose file"),
              ),
              RaisedButton(
                onPressed: _requestTempDirectory,
                child: Text("Send data to server!"),
              ),
            ],
          ),
        ),
      )
    );
    
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FileTransfer()),
                );
              },
              child: Text('Send File!'),
            ),
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _requestTempDirectory,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
