import 'package:sendem/app/components/file_upload/file_upload_controller_helper.dart';
import 'package:sendem/app/controller/screen_controller.dart';
import 'package:sendem/app/services/screen_navigator.dart';

class FileUploadController extends ScreenController{
  FileDropAreaController fileDropAreaController = FileDropAreaController();
  
  void goNext() {
    ScreenNavigatorService.navigateToUploadConfirmation(context: this.context);
  }
}