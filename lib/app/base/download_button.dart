import 'package:flutter/material.dart';
import 'package:sendem/app/components/button_type_long.dart';

class DownloadButton extends StatelessWidget {
  const DownloadButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonTypeLong(
      child: Row(
        children: <Widget>[
          const Icon(Icons.file_download),
          Spacer(flex: 1),
          const Text('Download'),
        ],
      ),
      onPressed: () {
        print("Download is clicked");
      },
    );
  }
}