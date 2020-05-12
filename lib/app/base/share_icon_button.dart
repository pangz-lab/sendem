import 'package:flutter/material.dart';

class ShareIconButton extends StatelessWidget {
  const ShareIconButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      margin:  EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          width: 1
        )
      ),
      child: IconButton(
        icon: Icon(Icons.share),
        iconSize: 40.0,
        onPressed: (){
          print("Share is pressed");
        },
      )
    );
  }
}