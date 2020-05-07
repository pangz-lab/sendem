import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FileDropArea extends StatelessWidget {
  static final BorderRadiusGeometry _borderRadius = BorderRadius.circular(30);
  const FileDropArea({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell (
      onTap: () {
        HapticFeedback.lightImpact();
      },
      borderRadius: _borderRadius,
      child: Container(
        height: 300,
        width: 300,
        padding: const EdgeInsets.all(10.0),

        decoration: BoxDecoration(
          color: Colors.black12,
          border: Border.all(
            color: Colors.black,
            style: BorderStyle.solid,
            width: 2.0  
          ),
          borderRadius: _borderRadius
        ),
        
        child: Center(
          child: Icon(
            Icons.add,
            size: 50,
          )
        ),
      ),
    );
  }
}