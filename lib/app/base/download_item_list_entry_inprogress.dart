import 'package:flutter/material.dart';
import 'package:sendem/app/common/list_tile_item.dart';

class DownloadItemListEntryInProgress extends StatelessWidget {
  final String filename;
  final String subTitle;
  const DownloadItemListEntryInProgress({
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
        leadingWidget: const Icon(Icons.file_download, size: 35.0),
        trailingWidget: CircularProgressIndicator(
          // value: 40.0,
          strokeWidth: 5.0,
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
        borderRadius: BorderRadius.circular(15.0)
      ),
    );
  }
}