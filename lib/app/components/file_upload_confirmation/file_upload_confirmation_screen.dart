import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sendem/app/base/upload_button.dart';
import 'package:sendem/app/base/file_upload_setting_form.dart';
import 'package:sendem/app/common/container_main_view.dart';
import 'package:sendem/app/components/file_upload_confirmation/file_upload_confirmation_controller.dart';
import 'package:sendem/app/provider/data_presistence_provider.dart';

class FileUploadConfirmationScreen extends StatelessWidget {
  final FileUploadConfirmationController controller = FileUploadConfirmationController();

  @override
  Widget build(BuildContext context) {
    var _dataPersistentProvider = Provider.of<DataPersistenceProvider>(context, listen: false);
    var _dataProvider = _dataPersistentProvider.getInstance("ScreenDataProvider");
    controller.setAppProvider(_dataPersistentProvider);
    controller.setDataProvider(_dataProvider["fileUploadScreen"]);
    
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
              FileUploadSettingForm(
                uploadFileName: controller.displayFile
              ),
              Spacer(flex: 1),
              UploadButton(
                onPressed: () {
                  controller.upload(context);
                },
              ),
              Spacer(flex: 1)
            ],
          ),
        ),
      )
    );
  }
}