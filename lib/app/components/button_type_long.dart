import 'package:flutter/material.dart';

class ButtonTypeLong extends StatelessWidget {
  final Widget child;
  final double width;
  final double height;
  final Function onPressed;
  const ButtonTypeLong({
    Key key,
    this.child,
    this.onPressed,
    this.width = double.infinity,
    this.height = 50 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: this.width,
      height: this.height,
      child: RaisedButton(
        autofocus: true,
        clipBehavior: Clip.none,
        child: this.child,
        onPressed: this.onPressed
      ),
    );
  }
}