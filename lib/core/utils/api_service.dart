import 'package:dio/dio.dart';

class ApiService {
  ApiService(this.dio);
  final Dio dio;
  final _baseUrl = 'https://www.googleapis.com/books/v1/';
  Future<Map<String, dynamic>> get({required String endpoint}) async {
    var response = await dio.get('$_baseUrl$endpoint');
    return response.data;
  }
}
