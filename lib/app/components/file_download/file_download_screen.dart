import 'package:flutter/material.dart';
import 'package:sendem/app/base/file_scan_area.dart';
import 'package:sendem/app/base/next_button.dart';
import 'package:sendem/app/common/container_main_view.dart';

class FileDownloadScreen extends StatelessWidget {
  const FileDownloadScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new ContainerMainView(
      child: new Container(
        padding: const EdgeInsets.all(30.0),
        alignment: Alignment.center,

        child: Column(
          children: <Widget>[
            Text(
              "File Download",
              style: TextStyle(
                fontSize: 22.0
              ),
            ),
            Text(
              "Scan the QR code",
              style: TextStyle(
                fontSize: 14.0
              ),
            ),
            Spacer(flex: 2),
            FileScanArea(),
            Spacer(flex: 4),
            NextButton(),
            Spacer(flex: 2)
          ],
        ),
      ),
    );
  }
}