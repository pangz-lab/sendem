import 'package:flutter/material.dart';
import 'package:sendem/app/base/download_button.dart';
import 'package:sendem/app/base/goto_button.dart';
import 'package:sendem/app/common/container_main_view.dart';
import 'package:sendem/app/services/screen_navigator.dart';

class FileDownloadConfirmationScreen extends StatelessWidget {
  const FileDownloadConfirmationScreen({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Verify your download'),
      ),
      body: ContainerMainView(
        child: new Container(
          padding: const EdgeInsets.all(30.0),
          alignment: Alignment.center,

          child: Column(
            children: <Widget>[
              Text(
                "Download Added to Queue",
                style: TextStyle(
                  fontSize: 22.0
                ),
              ),
              
              Spacer(flex: 30),
              GoToButton(
                title: "Get Info",
                icon: Icons.info,
                onPressed: () {
                  ScreenNavigatorService.navigateToFileInformation(context: context);
                }
              ),
              Spacer(flex: 3),
              DownloadButton(
                onPressed: () {
                  ScreenNavigatorService.navigateToDownloadCompleted(context: context);
                },
              ),
              Spacer(flex: 30),
            ],
          ),
        ),
      )
    );
  }
}