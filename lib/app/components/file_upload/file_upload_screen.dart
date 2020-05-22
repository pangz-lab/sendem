import 'package:flutter/material.dart';
import 'package:sendem/app/base/next_button.dart';
import 'package:sendem/app/base/file_drop_area.dart';
import 'package:sendem/app/common/container_main_view.dart';
import 'package:sendem/app/components/file_upload/file_upload_controller.dart';

class FileUploadScreen extends StatelessWidget {
  final FileUploadController _controller = new FileUploadController();
  FileUploadScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // _controller.setContext(context);
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
              // _controller.fileDropArea,
              FileDropArea(
                controller: _controller.fileDropAreaController
              ),
              Spacer(flex: 2),
              // _controller.nextButton,
              NextButton(
                onPressed: (){},
              ),
              Spacer(flex: 1)
            ],
          ),
        ),
    );
  }
}