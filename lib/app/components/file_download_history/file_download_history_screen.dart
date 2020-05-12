import 'package:flutter/material.dart';
import 'package:sendem/app/base/download_item_list_entry.dart';
import 'package:sendem/app/base/download_item_list_entry_inprogress.dart';
import 'package:sendem/app/services/screen_navigator.dart';

class FileDownloadHistoryScreen extends StatelessWidget {
  const FileDownloadHistoryScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Download History'),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          if(index.isEven) {
            return DownloadItemListEntry(
              filename: "API Design.pdf",
              subTitle: "12kb - May 11, 2020",
              onTap: () {
                ScreenNavigatorService.navigateToFileInformation(context: context);
              },
            );
          } else {
            return DownloadItemListEntryInProgress(
              filename: "API Design.pdf",
              subTitle: "12kb - May 11, 2020",
            );
          }
        },
      ),
    );
  }
}