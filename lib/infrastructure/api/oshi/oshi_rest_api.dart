import 'dart:io';
import 'package:html/dom.dart';
import 'package:sendem/infrastructure/api/api_interface.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart';

class OshiRestApi implements ApiInterface {
  static const String _oshiURI = 'https://oshi.at';

  dynamic uploadFile(dynamic object) async {
    assert(object.runtimeType == ApiRequestParameter);
    
    var file = new File(object.file);
    if(!(await file.exists())) { throw ApiRequestFileNotFoundError(); }

    return _sendFile(
      ApiRequestParameter(
        file: object.file,
        uri: _oshiURI
      )
    );
  }

  dynamic downloadFile(dynamic object) { return false;}
  dynamic sendRequest(dynamic headers, dynamic object) { return false;}

  dynamic _sendFile(ApiRequestParameter requestDefinition) async {
    var request = http.MultipartRequest(
      'POST',
      Uri.parse(requestDefinition.uri)
    );

    request.files.add(
      await http.MultipartFile.fromPath(
        'text',
        requestDefinition.file
      )
    );

    var result = await request.send();
    var lastRequestUri = await result.stream.bytesToString();
    var url = lastRequestUri.split("\n");
    print(result);
    print(lastRequestUri);
    return (url.length > 1)? (url[0].split(" ")[1] ?? "") : "";
  }

  Future<Map<String,dynamic>> getInfo(String pageUri) async {
    Map<String,dynamic> pageInfo = {};
    var page = await _getHtmlPage(pageUri);
    var document = parse(page);
    
    pageInfo['clearNetDownload'] = _getClassElementAt(document,"col text-left",0).firstChild.attributes['href'];
    pageInfo['torDownload'] = _getClassElementAt(document,"col text-left",1).firstChild.attributes['href'];
    pageInfo['fileSize'] = _getClassElementAt(document,"col text-left",2).innerHtml;
    pageInfo['sha1Checksum'] = _getClassElementAt(document,"col text-left",4).innerHtml;
    pageInfo['creationDate'] = _getClassElementAt(document,"col text-left",5).innerHtml;
    pageInfo['expiryDate'] = _getClassElementAt(document,"col text-left",6).innerHtml;

    return pageInfo;
  }

  dynamic _getClassElementAt(
    Document doc,
    String className,
    int index
  ) {
    return doc.getElementsByClassName(className).elementAt(index);
  }

  Future<String> _getHtmlPage(String uri) async {
    var response = await http.get(uri);
    String parsedHtmlDoc = '';
    if(response.statusCode == 200){
      parsedHtmlDoc = response.body;
    }
    return parsedHtmlDoc;
  }
}