import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';
import 'package:sendem/app/provider/data_presistence_provider.dart';
import 'package:sendem/app/base/upload_item_list_entry.dart';
import 'package:sendem/app/base/upload_item_list_entry_inprogress.dart';
import 'package:sendem/app/components/file_upload_history/file_upload_history_controller.dart';
import 'package:sendem/domain/models/upload_file.dart';

class FileUploadHistoryScreen extends StatefulWidget {
  final FileUploadHistoryController controller = FileUploadHistoryController();
  FileUploadHistoryScreen({Key key}) : super(key: key);
  @override
  _FileUploadHistoryScreenState createState() => _FileUploadHistoryScreenState();
}

class _FileUploadHistoryScreenState extends State<FileUploadHistoryScreen> {
  Box<UploadFile> _uploadFileBox;
  
  void initState() {
    super.initState();
    _uploadFileBox = Hive.box<UploadFile>("UploadFile");
  }

  @override
  Widget build(BuildContext context) {
    widget.controller.setAppProvider(
      Provider.of<DataPersistenceProvider>(context, listen: false)
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Upload History'),
      ),
      body: ValueListenableBuilder(
        valueListenable: widget.controller.fileUploadListenableCollection(),
        builder: (context, fileUploadBox, _) {
          Box<UploadFile> _fileUpload = fileUploadBox;
          
          return ListView.builder(
            itemCount: _fileUpload.length,
            itemBuilder: (context, index) {
              // print(_fileUpload.getAt(index).name);

              if(index.isEven) {
                return UploadItemListEntry(
                  // filename: "API Design.pdf",
                  filename: _fileUpload.getAt(index).name,
                  subTitle: "12kb - May 11, 2020",
                  onTap: widget.controller.showFileInformation(context),
                );
                
              } else {
                return UploadItemListEntryInProgress(
                  filename: "API Design.pdf",
                  subTitle: "12kb - May 11, 2020",
                );
              }
            },
          );
        })
    );
  }
}