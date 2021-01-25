import 'package:flutter/material.dart';
import 'package:sendem/app/common/container_main_view.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return ContainerMainView(
        child: new Container(
          padding: const EdgeInsets.all(30.0),
          alignment: Alignment.center,
          child: CircularProgressIndicator(
            strokeWidth: 20.0,
            backgroundColor: Colors.grey,
          )
        ),
    );
  }
}