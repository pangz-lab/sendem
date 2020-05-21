import 'package:sendem/infrastructure/repository/api_repository_interface.dart';

class ApiInterface implements ApiRepositoryInterface {
  dynamic uploadFile(dynamic object) { return false;}
  dynamic downloadFile(dynamic object) { return false;}
  dynamic sendRequest(dynamic headers, dynamic object) { return false;}
}

class ApiRequestParameter {
  dynamic file;
  String method;
  String uri;
  dynamic headers;
  ApiRequestParameter({
    this.file,
    this.method,
    this.uri,
    this.headers,
  });
}

class ApiRequestFileNotFoundError extends Error {}