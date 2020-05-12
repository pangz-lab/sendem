import 'package:flutter/material.dart';
import 'package:sendem/app/base/upload_item_list_entry.dart';
import 'package:sendem/app/base/upload_item_list_entry_inprogress.dart';
import 'package:sendem/app/services/screen_navigator.dart';

class FileUploadHistoryScreen extends StatelessWidget {
  const FileUploadHistoryScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upload History'),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          if(index.isEven) {
            return UploadItemListEntry(
              filename: "API Design.pdf",
              subTitle: "12kb - May 11, 2020",
              onTap: () {
                ScreenNavigatorService.navigateToFileInformation(context: context);
              },
            );
            
          } else {
            return UploadItemListEntryInProgress(
              filename: "API Design.pdf",
              subTitle: "12kb - May 11, 2020",
            );
          }
        },
      ),
    );
  }
}