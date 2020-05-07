import 'package:flutter/material.dart';
import 'package:sendem/app/components/button_type_long.dart';

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
        children: <Widget>[
          const Icon(Icons.home),
          Spacer(flex: 1),
          Text(this.title),
        ],
      ),
      onPressed: this.onPressed,
    );
  }
}