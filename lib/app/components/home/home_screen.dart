import 'package:flutter/material.dart';
import 'package:sendem/app/base/file_qr_box.dart';
import 'package:sendem/app/base/upload_button.dart';
import 'package:sendem/app/base/download_button.dart';
import 'package:sendem/app/common/container_main_view.dart';
import 'package:sendem/app/services/screen_navigator.dart';
import 'package:sendem/app/setting/screen_route_collection.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return ContainerMainView(
        child: new Container(
          padding: const EdgeInsets.all(30.0),
          alignment: Alignment.center,

          child: Column(
            children: <Widget>[
              FileQRBox(),
              Spacer(flex: 6),
              UploadButton(
                onPressed: () {
                  ScreenNavigatorService.navigateToMain(
                    context: context,
                    screenIndex: ScreenRouteCollection.mainScreenIndex['file_upload']
                  );
                },
              ),
              Spacer(flex: 1),
              DownloadButton(
                onPressed: () {
                  ScreenNavigatorService.navigateToMain(
                    context: context,
                    screenIndex: ScreenRouteCollection.mainScreenIndex['file_download']
                  );
                },
              ),
              Spacer(flex: 1)
            ],
          ),
        ),
    );
  }
}