import 'package:flutter/material.dart';
import 'package:sendem/app/base/upload_button.dart';
import 'package:sendem/app/base/download_button.dart';
import 'package:sendem/app/components/container_main_view.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              UploadButton(),
              Spacer(flex: 1),
              DownloadButton(),
              Spacer(flex: 6)
            ],
          ),
        ),
    );
  }
}