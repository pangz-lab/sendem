import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FileIcon extends StatelessWidget{
  String fileName;
  

  FileIcon(this.fileName);

  @override
  Widget build(BuildContext context) {
    // var split = this.fileName.split(".");
    // var fileExtension = split[split.length-1];
    // FaIcon(FontAwesomeIcons.gamepad),
    // return FaIxcon

  }
}

class FileTypeLibrary {
  Map<String, String> common = {
    '.aac' : 'audio',
    '.abw' : 'word-doc',
    '.arc' : 'archive',
    '.avi' : 'video-avi',
    '.azw' : 'ebook-kindle',
    '.bin' : 'binary',
    '.bmp' : 'image',
    '.bz' : 'archive-zip',
    '.bz2' : '',
    '.csh' : '',
    '.css' : '',
    '.csv' : '',
    '.doc' : '',
    '.docx' : '',
    '.eot' : '',
    '.epub' : '',
    '.es' : '',
    '.gif' : '',
    '.htm' : '',
    '.html' : '',
    '.ico' : '',
    '.ics' : '',
    '.jar' : '',
    '.jpeg' : '',
    '.jpg': '',
    '.js' : '',
    '.json' : '',
    '.mid' : '',
    '.midi': '',
    '.mpeg' : '',
    '.mpkg' : '',
    '.odp' : '',
    '.ods' : '',
    '.odt' : '',
    '.oga' : '',
    '.ogv' : '',
    '.ogx' : '',
    '.otf' : '',
    '.png' : '',
    '.pdf' : '',
    '.ppt' : '',
    '.pptx' : '',
    '.rar' : '',
    '.rtf' : '',
    '.sh' : '',
    '.svg' : '',
    '.swf' : '',
    '.tar' : '',
    '.tif' : '',
    '.tiff' : '',
    '.ts' : '',
    '.ttf' : '',
    '.txt' : '',
    '.vsd' : '',
    '.wav' : '',
    '.weba' : '',
    '.webm' : '',
    '.webp' : '',
    '.woff' : '',
    '.woff2' : '',
    '.xhtml' : '',
    '.xls' : '',
    '.xlsx' : '',
    '.xml' : '',
    '.xul' : '',
    '.zip' : '',
    '.3gp' : '',
    '.3g2' : '',
    '.7z' : '',
  };
}