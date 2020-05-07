import 'package:flutter/material.dart';

class AvailabilityDropDown extends StatefulWidget {
  AvailabilityDropDown({Key key}) : super(key: key);

  @override
  _AvailabilityDropDownState createState() => _AvailabilityDropDownState();
}

class _AvailabilityDropDownState extends State<AvailabilityDropDown> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.5, 0.0),
        decoration: BoxDecoration(
          border: Border.all(
            width: 0.5,
            style: BorderStyle.solid
          ),
          borderRadius: BorderRadius.circular(10.0)
        ),

        child: DropdownButton<String>(
          value: dropdownValue,
          underline: Container(
            decoration: null,
          ),
          icon: Icon(Icons.timer),
          iconSize: 24,
          onChanged: (String newValue) {
            setState(() {
              dropdownValue = newValue;
            });
          },
          items: <String>['One', 'Two', 'Free', 'Four']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}