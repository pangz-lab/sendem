import 'package:flutter/material.dart';

class ListTileItem extends StatelessWidget {
  final String title;
  final String subTitle;
  final Widget leadingWidget;
  final Widget trailingWidget;
  final Function onTap;
  const ListTileItem({
    Key key,
    this.title,
    this.subTitle,
    this.leadingWidget,
    this.trailingWidget,
    this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(this.title),
      subtitle: Text(this.subTitle),
      leading: this.leadingWidget,
      trailing: this.trailingWidget,
      onTap: this.onTap
    );
  }
}