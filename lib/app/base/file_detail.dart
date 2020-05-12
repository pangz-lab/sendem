import 'package:flutter/material.dart';

class FileDetail extends StatelessWidget {
  const FileDetail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          width: 1
        )
      ),
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text(
              "API Design.pdf ",
              style: TextStyle(
                fontSize: 24
              ),
            ),
            subtitle: Text("Filename"),
            trailing: const Icon(
              Icons.info,
              size: 35,
            ),
          ),
          Divider(),
          ListTile(
            title: Text("12kb"),
            subtitle: Text("File Size"),
            dense: true
          ),
          ListTile(
            title: Text("application/pdf"),
            subtitle: Text("Mime-Type"),
            dense: true
          ),
          ListTile(
            title: Text("May 11, 2020 15:00:00"),
            subtitle: Text("Creation Date"),
            dense: true
          ),
        ],
      )
    );
  }
}