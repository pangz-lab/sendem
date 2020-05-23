import 'package:flutter/material.dart';
import 'package:sendem/app/base/upload_button.dart';
import 'package:sendem/app/base/file_upload_setting_form.dart';
import 'package:sendem/app/common/container_main_view.dart';

class FileUploadConfirmationScreen extends StatelessWidget {
  // final FileUploadConfirmationController controller = FileUploadConfirmationController();

  @override
  Widget build(BuildContext context) {

    // this.controller.uploadButtonController.setContext(context);
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
              Spacer(flex: 1),
              FileUploadSettingForm(uploadFileName: "API Design.pdf"),
              Spacer(flex: 1),
              UploadButton(
                // controller: this.controller.uploadButtonController
              ),
              Spacer(flex: 1)
            ],
          ),
        ),
      )
    );
  }
}