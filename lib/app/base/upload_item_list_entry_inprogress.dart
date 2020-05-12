import 'package:flutter/material.dart';
import 'package:sendem/app/common/list_tile_item.dart';

class UploadItemListEntryInProgress extends StatelessWidget {
  final String filename;
  final String subTitle;
  const UploadItemListEntryInProgress({
    Key key,
    this.filename,
    this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      margin: EdgeInsets.fromLTRB(10.0, 1.0, 10.0, 2.0),
      child: ListTileItem(
        leadingWidget: const Icon(Icons.cloud_upload, size: 35.0),
        trailingWidget: CircularProgressIndicator(
          // value: 40.0,
          strokeWidth: 10.0,
          backgroundColor: Colors.grey,
        ),
        title: this.filename,
        subTitle: this.subTitle,
        onTap: () {}
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