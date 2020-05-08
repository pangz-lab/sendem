import 'package:flutter/material.dart';
import 'package:sendem/app/base/file_drop_area.dart';
import 'package:sendem/app/base/next_button.dart';
import 'package:sendem/app/common/container_main_view.dart';
import 'package:sendem/app/core/screen_navigator.dart';

class FileUploadScreen extends StatelessWidget {
  const FileUploadScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Function _nextScreen = () {
      ScreenNavigatorController.navigateTo(
        context: context,
        screenRouteName: '/file_upload_setting'
      );
    };
    return ContainerMainView(
        child: new Container(
          padding: const EdgeInsets.all(30.0),
          alignment: Alignment.center,

          child: Column(
            children: <Widget>[
              Text(
                "File Upload",
                style: TextStyle(
                  fontSize: 22.0
                ),
              ),
              Text(
                "Choose file to share",
                style: TextStyle(
                  fontSize: 14.0
                ),
              ),
              Spacer(flex: 1),
              FileDropArea(),
              Spacer(flex: 2),
              NextButton(
                onPressed: _nextScreen,
              ),
              Spacer(flex: 1)
            ],
          ),
        ),
    );
  }
}