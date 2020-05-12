import 'package:flutter/material.dart';
import 'package:sendem/app/base/file_detail.dart';
import 'package:sendem/app/base/file_shareable_code.dart';
import 'package:sendem/app/common/container_main_view.dart';

class FileInformationScreen extends StatelessWidget {
  const FileInformationScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('File Information'),
      ),
      body: ContainerMainView(
        child: new Container(
          padding: const EdgeInsets.fromLTRB(10.0, 25.0, 10.0, 5.0),
          alignment: Alignment.center,

          child: Column(
            children: <Widget>[
              FileShareableCode(
                fileData: "This is a test data of the file@!",
              ),
              Spacer(flex: 1),
              FileDetail(),
            ],
          ),
        ),
      )
    );
  }
}