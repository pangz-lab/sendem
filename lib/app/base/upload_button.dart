import 'package:flutter/material.dart';
import 'package:sendem/app/common/button_type_long.dart';

class UploadButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  const UploadButton({
    Key key,
    this.onPressed,
    this.title = "Upload"
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonTypeLong(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Icon(Icons.cloud_upload),
          const Text(" "),
          Text(
            this.title,
          ),
        ],
      ),
      onPressed: this.onPressed,
    );
  }
}