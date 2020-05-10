import 'package:flutter/material.dart';
import 'package:sendem/app/base/upload_button.dart';
import 'package:sendem/app/base/goto_button.dart';
import 'package:sendem/app/base/home_button.dart';
import 'package:sendem/app/common/container_main_view.dart';
import 'package:sendem/app/services/screen_navigator.dart';
import 'package:sendem/app/setting/screen_route_collection.dart';

class UploadCompletedScreen extends StatelessWidget {
  const UploadCompletedScreen({Key key}) : super(key: key);

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
                "Upload Added to Queue",
                style: TextStyle(
                  fontSize: 22.0
                ),
              ),
              // Text(
              //   "Visit your history",
              //   style: TextStyle(
              //     fontSize: 14.0
              //   ),
              // ),
              Spacer(flex: 30),
              GoToButton(
                title: "Go to Downloads",
                onPressed: () {},
              ),
              Spacer(flex: 3),
              UploadButton(
                title: "New Upload",
                onPressed: () {
                  ScreenNavigatorService.navigateToMain(
                    context: context,
                    screenIndex: ScreenRouteCollection.mainScreenIndex['file_upload']
                  );
                },
              ),
              Spacer(flex: 3),
              HomeButton(
                onPressed: () {
                  ScreenNavigatorService.navigateToMain(context: context);
                },
              ),
              Spacer(flex: 30)
            ],
          ),
        ),
      )
    );
  }
}