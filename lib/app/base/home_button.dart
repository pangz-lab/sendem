import 'package:flutter/material.dart';
import 'package:sendem/app/common/button_type_long.dart';

class HomeButton extends StatelessWidget {
  final String title;
  final Function onPressed;

  const HomeButton({
    Key key,
    this.onPressed,
    this.title = "Home"
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonTypeLong(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Icon(Icons.home),
          const Text(" "),
          Text(this.title),
        ],
      ),
      onPressed: this.onPressed,
    );
  }
}