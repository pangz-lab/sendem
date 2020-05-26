// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_status.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FileStatusAdapter extends TypeAdapter<FileStatus> {
  @override
  final typeId = 2;

  @override
  FileStatus read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return FileStatus.uploaded;
      case 1:
        return FileStatus.downloaded;
      case 2:
        return FileStatus.upload_inprogress;
      case 3:
        return FileStatus.download_inprogress;
      case 4:
        return FileStatus.deleted;
      case 5:
        return FileStatus.cancelled;
      case 6:
        return FileStatus.completed;
      case 7:
        return FileStatus.completed_with_error;
      default:
        return null;
    }
  }

  @override
  void write(BinaryWriter writer, FileStatus obj) {
    switch (obj) {
      case FileStatus.uploaded:
        writer.writeByte(0);
        break;
      case FileStatus.downloaded:
        writer.writeByte(1);
        break;
      case FileStatus.upload_inprogress:
        writer.writeByte(2);
        break;
      case FileStatus.download_inprogress:
        writer.writeByte(3);
        break;
      case FileStatus.deleted:
        writer.writeByte(4);
        break;
      case FileStatus.cancelled:
        writer.writeByte(5);
        break;
      case FileStatus.completed:
        writer.writeByte(6);
        break;
      case FileStatus.completed_with_error:
        writer.writeByte(7);
        break;
    }
  }
}
