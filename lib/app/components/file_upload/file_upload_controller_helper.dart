import 'dart:io';
import 'package:flutter/material.dart';
import 'package:sendem/app/base/file_drop_area.dart';
import 'package:sendem/app/controller/screen_controller.dart';

class FileDropAreaController 
extends ScreenController 
implements FileDropAreaControllerInterface {
  File file;

  void afterFileSelected(Widget containerWidget, File selectedFile) {
    this.file = selectedFile;
  }

  File getFile() => file;

  Widget containerAfterSelection(File file) {
    String fullPath = file.path.toString();
    String fileName = "";
    var fileComponent = fullPath.split("/");
    fileName = fileComponent[fileComponent.length-1];
    return Container(
      height: 300,
      width: 300,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.yellow[100],
        border: Border.all(
          color: Colors.black,
          style: BorderStyle.solid,
          width: 1.0
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(fileName),
      ),
    );
  }
}

class FileUploadProvider {
  File _activeFile;
  Map<String, dynamic> _fileInfo;

  File get file => _activeFile;
  Map<String, dynamic> get fileInfo => _fileInfo;

  void setFile(File file) {
    _activeFile = file;
  }

  void setFileInfo(Map<String, dynamic> info) {
    _fileInfo = info;
  }
}