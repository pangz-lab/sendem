import 'package:flutter/material.dart';
import 'package:sendem/app/common/list_tile_item.dart';

class UploadItemListEntry extends StatelessWidget {
  final String filename;
  final String subTitle;
  final Function onTap;
  const UploadItemListEntry({
    Key key,
    this.filename,
    this.subTitle,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      margin: EdgeInsets.fromLTRB(10.0, 1.0, 10.0, 2.0),
      child: ListTileItem(
        onTap: this.onTap,
        leadingWidget: const Icon(Icons.cloud_upload, size: 35.0),
        trailingWidget: Container(
          padding: EdgeInsets.all(10),
          child: const Icon(Icons.delete, size: 25.0),
          decoration: BoxDecoration(
            // color: Theme.of(context).accentColor,
            border: Border.all(
              // color: Theme.of(context).accentColor,
              style: BorderStyle.solid,
              width: 1
            ),
            borderRadius: BorderRadius.circular(45)
          ),
        ),
        title: this.filename,
        subTitle: this.subTitle
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).primaryColor,
          style: BorderStyle.solid,
          width: 1
        ),
        borderRadius: BorderRadius.circular(25.0)
      ),
    );
  }
}