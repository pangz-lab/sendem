import 'package:sendem/domain/models/file_status.dart';
import 'package:sendem/domain/models/file_type.dart';

class TransferFile {
  String name;
  int size;
  FileType type;
  FileStatus status;
  String qrData;
  String uri;
  String checksum;
  String expiryDate;
  String createdDate;
  String updatedDate;
  TransferFile({
    this.name,
    this.size,
    this.type,
    this.status,
    this.qrData,
    this.uri,
    this.checksum,
    this.expiryDate,
    this.createdDate,
    this.updatedDate
  });
}