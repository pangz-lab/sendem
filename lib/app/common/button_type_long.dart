import 'package:flutter/material.dart';

class ButtonTypeLong extends StatelessWidget {
  final Widget child;
  final double height;
  final Color color;
  final Function onPressed;
  const ButtonTypeLong({
    Key key,
    this.child,
    this.onPressed,
    this.color,
    this.height = 50 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: this.height,
      child: RaisedButton(
        autofocus: true,
        visualDensity: VisualDensity.comfortable,
        color: this.color,
        clipBehavior: Clip.none,
        child: this.child,
        onPressed: this.onPressed
      ),
    );
  }
}