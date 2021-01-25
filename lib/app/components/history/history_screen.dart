import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sendem/app/provider/data_presistence_provider.dart';
import 'package:sendem/app/base/upload_button.dart';
import 'package:sendem/app/base/download_button.dart';
import 'package:sendem/app/common/container_main_view.dart';
import 'package:sendem/app/components/history/history_controller.dart';

class HistoryScreen extends StatelessWidget {
  final HistoryController controller = HistoryController();
  HistoryScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.setAppProvider(
      Provider.of<DataPersistenceProvider>(context, listen: false)
    );

    return ContainerMainView(
        child: new Container(
          padding: const EdgeInsets.all(30.0),
          alignment: Alignment.center,

          child: Column(
            children: <Widget>[
              Text(
                "History",
                style: TextStyle(
                  fontSize: 22.0
                ),
              ),
              Text(
                "Visit your history",
                style: TextStyle(
                  fontSize: 14.0
                ),
              ),
              Spacer(flex: 10),
              UploadButton(
                onPressed: controller.goToUploadHistory(context),
              ),
              Spacer(flex: 1),
              DownloadButton(
                onPressed: controller.goToDownloadHistory(context),
              ),
              Spacer(flex: 6)
            ],
          ),
        ),
    );
  }
}