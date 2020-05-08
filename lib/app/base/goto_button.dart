import 'package:flutter/material.dart';
import 'package:sendem/app/common/button_type_long.dart';

class GoToButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  const GoToButton({
    Key key,
    this.onPressed,
    this.title = "Go to"
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonTypeLong(
      color: Theme.of(context).accentColor,
      child: Row(
        children: <Widget>[
          const Icon(Icons.list),
          Spacer(flex: 1),
          Text(this.title),
        ],
      ),
      onPressed: this.onPressed,
    );
  }
}