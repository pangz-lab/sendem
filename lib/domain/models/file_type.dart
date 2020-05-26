import 'package:hive/hive.dart';

part 'file_type.g.dart';

@HiveType(typeId: 1)
enum FileType {
  @HiveField(0)
  download,
  @HiveField(1)
  upload
}