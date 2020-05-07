import 'package:flutter/material.dart';

class ContainerMainView extends StatelessWidget {
  final Widget child;
  const ContainerMainView({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.all(2.0),
      margin: const EdgeInsets.all(15.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            blurRadius: 1.0,
            offset: Offset.fromDirection(50.0)
          )
        ],
        borderRadius: BorderRadius.circular(20)
      ),
      
      child: new Center(
        child: child
      )
    );
  }
}