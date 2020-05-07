import 'package:flutter/material.dart';
import 'package:sendem/app/components/button_type_long.dart';

class UploadButton extends StatelessWidget {
  const UploadButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonTypeLong(
      child: Row(
        children: <Widget>[
          const Icon(Icons.cloud_upload),
          Spacer(flex: 1),
          const Text('Upload'),
        ],
      ),
      onPressed: () {
        print("Upload is clicked");
      },
    );
  }
}