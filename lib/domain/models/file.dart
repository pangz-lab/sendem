import 'package:sendem/domain/models/file_status.dart';
import 'package:sendem/domain/models/file_type.dart';

class File {
  String name;
  double size;
  FileType type;
  FileStatus status;
  String qrData;
  int createdDate;
  int updatedDate;
}