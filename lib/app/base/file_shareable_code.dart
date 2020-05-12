import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:sendem/app/base/share_icon_button.dart';

class FileShareableCode extends StatelessWidget {
  final String fileData;
  const FileShareableCode({
    Key key,
    this.fileData
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
      child: Row(
        children: <Widget>[
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2
              )
            ),
            child: QrImage(
              data: this.fileData,
              version: QrVersions.auto,
              size: 150,
              gapless: true,
            ),
          ),
          Spacer(flex:1),
          ShareIconButton(),
        ],
      )
    );
  }
}