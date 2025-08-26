import 'package:dio/dio.dart';

class ApiServices {
  final Dio _dio;
  final String _baseUrl = 'https://www.googleapis.com/books/v1/';

  ApiServices(this._dio);

  Future<Response> get({required String endpoint}) async {
    Response response = await _dio.get('$_baseUrl$endpoint');

    return response;
  }
}
