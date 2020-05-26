// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_file.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UploadFileAdapter extends TypeAdapter<UploadFile> {
  @override
  final typeId = 3;

  @override
  UploadFile read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UploadFile()
      ..name = fields[0] as String
      ..size = fields[1] as int
      ..type = fields[2] as FileType
      ..status = fields[3] as FileStatus
      ..qrData = fields[4] as String
      ..uri = fields[5] as String
      ..checksum = fields[6] as String
      ..expiryDate = fields[7] as String
      ..createdDate = fields[8] as String
      ..updatedDate = fields[9] as String;
  }

  @override
  void write(BinaryWriter writer, UploadFile obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.size)
      ..writeByte(2)
      ..write(obj.type)
      ..writeByte(3)
      ..write(obj.status)
      ..writeByte(4)
      ..write(obj.qrData)
      ..writeByte(5)
      ..write(obj.uri)
      ..writeByte(6)
      ..write(obj.checksum)
      ..writeByte(7)
      ..write(obj.expiryDate)
      ..writeByte(8)
      ..write(obj.createdDate)
      ..writeByte(9)
      ..write(obj.updatedDate);
  }
}
