// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FileTypeAdapter extends TypeAdapter<FileType> {
  @override
  final typeId = 1;

  @override
  FileType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return FileType.download;
      case 1:
        return FileType.upload;
      default:
        return null;
    }
  }

  @override
  void write(BinaryWriter writer, FileType obj) {
    switch (obj) {
      case FileType.download:
        writer.writeByte(0);
        break;
      case FileType.upload:
        writer.writeByte(1);
        break;
    }
  }
}
