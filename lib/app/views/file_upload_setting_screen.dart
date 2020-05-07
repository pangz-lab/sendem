import 'package:flutter/material.dart';
import 'package:sendem/app/base/next_button.dart';
import 'package:sendem/app/base/file_upload_setting_form.dart';
import 'package:sendem/app/components/container_main_view.dart';

class FileUploadScreen extends StatelessWidget {

  // bool _destroyAfterDownload = false;
  // bool _randomizeName = false;
  // bool _shortUrl = false;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Verify your upload'),
      ),
      body: ContainerMainView(
        child: new Container(
          padding: const EdgeInsets.all(30.0),
          alignment: Alignment.center,

          child: Column(
            children: <Widget>[
              Text(
                "Upload Setting",
                style: TextStyle(
                  fontSize: 22.0
                ),
              ),
              Text(
                "Define the configuration",
                style: TextStyle(
                  fontSize: 14.0
                ),
              ),
              Spacer(flex: 1),
              FileUploadSettingForm(uploadFileName: "API Design.pdf"),
              Spacer(flex: 2),
              NextButton(),
              Spacer(flex: 1)
            ],
          ),
        ),
      )
    );
      
  }
}