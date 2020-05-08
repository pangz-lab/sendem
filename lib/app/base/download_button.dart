import 'package:flutter/material.dart';
import 'package:sendem/app/common/button_type_long.dart';

class DownloadButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  const DownloadButton({
    Key key,
    this.onPressed,
    this.title = "Download"
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonTypeLong(
      child: Row(
        children: <Widget>[
          const Icon(Icons.file_download),
          Spacer(flex: 1),
          Text(this.title),
        ],
      ),
      onPressed: this.onPressed,
    );
  }
}