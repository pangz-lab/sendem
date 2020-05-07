import 'package:flutter/material.dart';

class CheckboxTypeLong extends StatefulWidget {
  final String title;
  final bool initialState;
  CheckboxTypeLong({
    Key key,
    this.title,
    this.initialState,
  }) : super(key: key);

  @override
  _CheckboxTypeLongState createState() => _CheckboxTypeLongState(
    currentState: initialState
  );
}

class _CheckboxTypeLongState extends State<CheckboxTypeLong> {
  bool currentState;
  _CheckboxTypeLongState({
    this.currentState
  });

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(widget.title),
      value: currentState,
      dense: true,
      controlAffinity: ListTileControlAffinity.leading,
      onChanged: (state) {
        setState(() {
          currentState = state;
        });
      }
    );
  }
}