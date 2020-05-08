import 'package:flutter/material.dart';
import 'package:sendem/app/common/button_type_long.dart';

class NextButton extends StatelessWidget {
  final Function onPressed;
  const NextButton({Key key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonTypeLong(
      child: const Text('Next'),
      onPressed: this.onPressed,
    );
  }
}