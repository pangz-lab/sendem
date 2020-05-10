import 'package:flutter/material.dart';
import 'package:sendem/app/common/button_type_long.dart';

class GoToButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function onPressed;
  const GoToButton({
    Key key,
    this.onPressed,
    this.title = "Go to",
    this.icon = Icons.list
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonTypeLong(
      color: Theme.of(context).accentColor,
      child: Row(
        children: <Widget>[
          Icon(this.icon),
          Spacer(flex: 1),
          Text(this.title),
        ],
      ),
      onPressed: this.onPressed,
    );
  }
}