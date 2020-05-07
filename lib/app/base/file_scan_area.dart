import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FileScanArea extends StatelessWidget {
  static final BorderRadiusGeometry _borderRadius = BorderRadius.circular(30);
  const FileScanArea({Key key}) : super(key: key);

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
            width: 3.0  
          ),
          borderRadius: _borderRadius
        ),
        
        child: Center(
          child: Icon(
            Icons.crop_free,
            size: 80,
          )
        ),
      ),
    );
  }
}