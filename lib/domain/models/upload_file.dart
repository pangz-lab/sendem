import 'package:hive/hive.dart';
import 'package:sendem/domain/models/file_status.dart';
import 'package:sendem/domain/models/file_type.dart';
import 'package:sendem/domain/models/transfer_file.dart';

part 'upload_file.g.dart';

@HiveType(typeId: 3)
class UploadFile implements TransferFile {
  @HiveField(0)
  String name;
  @HiveField(1)
  int size;
  @HiveField(2)
  FileType type;
  @HiveField(3)
  FileStatus status;
  @HiveField(4)
  String qrData;
  @HiveField(5)
  String uri;
  @HiveField(6)
  String checksum;
  @HiveField(7)
  String expiryDate;
  @HiveField(8)
  String createdDate;
  @HiveField(9)
  String updatedDate;
  // UploadFile({
  //   this.name,
  //   this.size,
  //   this.type,
  //   this.status,
  //   this.qrData,
  //   this.uri,
  //   this.checksum,
  //   this.expiryDate,
  //   this.createdDate,
  //   this.updatedDate
  // });
}