import 'package:dio/dio.dart';

class ApiServices {
  final Dio dio;
  final String _baseUrl = 'https://www.googleapis.com/books/v1/';

  ApiServices(this.dio);

  Future<Response> get({required String endpoint}) async {
    Response response = await dio.get('$_baseUrl$endpoint');

    return response;
  }
}
