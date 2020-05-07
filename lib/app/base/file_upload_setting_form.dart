import 'package:flutter/material.dart';
import 'package:sendem/app/base/availability_dropdown.dart';
import 'package:sendem/app/components/textfield_type_long.dart';
import 'package:sendem/app/components/checkbox_type_long.dart';

class FileUploadSettingForm extends StatefulWidget {
  final String uploadFileName;
  FileUploadSettingForm({Key key, this.uploadFileName}) : super(key: key);

  @override
  _FileUploadSettingFormState createState() => _FileUploadSettingFormState();
}

class _FileUploadSettingFormState extends State<FileUploadSettingForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFieldTypeLong(
            readonly: true,
            initialValue: widget.uploadFileName
          ),
          Text("Available Within", textAlign: TextAlign.left),
          AvailabilityDropDown(),
          CheckboxTypeLong(
            key: UniqueKey(),
            title: "Destroy After Download",
            initialState: true,
          ),
          CheckboxTypeLong(
            key: UniqueKey(),
            title: "Randomize Name",
            initialState: true,
          ),
          CheckboxTypeLong(
            key: UniqueKey(),
            title: "Short URL",
            initialState: true,
          ),
        ],
      ),
    );
  }
}