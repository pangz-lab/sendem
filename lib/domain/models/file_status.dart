import 'package:hive/hive.dart';

part 'file_status.g.dart';

@HiveType(typeId: 2)
enum FileStatus {
  @HiveField(0)
  uploaded,
  @HiveField(1)
  downloaded,
  @HiveField(2)
  upload_inprogress,
  @HiveField(3)
  download_inprogress,
  @HiveField(4)
  deleted,
  @HiveField(5)
  cancelled,
  @HiveField(6)
  completed,
  @HiveField(7)
  completed_with_error
}