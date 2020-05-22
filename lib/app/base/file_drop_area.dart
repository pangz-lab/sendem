import 'dart:io';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';

class FileDropArea extends StatefulWidget {
  final FileDropAreaControllerInterface controller;
  FileDropArea({Key key, @required this.controller}) : super(key: key);

  @override
  _FileDropAreaState createState() => _FileDropAreaState();
}

class _FileDropAreaState extends State<FileDropArea> {
  Widget defaultContainer = DropAreaContainer.build();

  @override
  Widget build(BuildContext context) {
    return InkWell (
      onTap: () async {
        HapticFeedback.lightImpact();
        var selectedFile = await FilePicker.getFile();
        widget.controller.afterFileSelected(
          defaultContainer,
          selectedFile
        );
        setState(() {
          defaultContainer = widget.controller.containerAfterSelection(selectedFile);
        });
      },
      hoverColor: Colors.orange,
      borderRadius: DropAreaContainer.borderRadius,
      child: defaultContainer,
    );
  }
}


class DropAreaContainer {
  static BorderRadiusGeometry borderRadius = BorderRadius.circular(30);

  static Widget build() {
    return Container(
      height: 300,
      width: 300,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.black12,
        border: Border.all(
          color: Colors.black,
          style: BorderStyle.solid,
          width: 3.0  
        ),
        borderRadius: borderRadius
      ),
      child: Center(
        child: Icon(
          Icons.add,
          size: 80,
        )
      ),
    );
  }
}
class FileDropAreaControllerInterface {
  File file;
  Widget containerAfterSelection(File file) { return DropAreaContainer.build();}
  void afterFileSelected(
    Widget containerWidget,
    File file
  ) {}
}