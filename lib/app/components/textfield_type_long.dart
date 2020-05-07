import 'package:flutter/material.dart';

class TextFieldTypeLong extends StatefulWidget {
  final bool readonly;
  final String initialValue;
  TextFieldTypeLong({
    Key key,
    this.readonly,
    this.initialValue
  }) : super(key: key);

  @override
  _TextFieldTypeLongState createState() => _TextFieldTypeLongState();
}

class _TextFieldTypeLongState extends State<TextFieldTypeLong> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
        decoration: BoxDecoration(
          border: Border.all(
            width: 0.5,
            style: BorderStyle.solid
          ),
          borderRadius: BorderRadius.circular(10.0)
        ),
        child: TextFormField(
          readOnly: widget.readonly,
          initialValue: widget.initialValue,
          decoration: InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
          ),
        ),
      )
    );
  }
}