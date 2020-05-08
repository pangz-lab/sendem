import 'package:flutter/material.dart';

class ContainerMainView extends StatelessWidget {
  final Widget child;
  const ContainerMainView({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.all(0.0),
      margin: const EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 30.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.white,
        //     blurRadius: 1.0,
        //     offset: Offset.fromDirection(50.0)
        //   )
        // ],
        borderRadius: BorderRadius.circular(10)
      ),
      
      child: new Center(
        child: child
      )
    );
  }
}