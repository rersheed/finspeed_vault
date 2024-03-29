import 'package:dio/dio.dart';

class ApiClient {
  final String baseUrl;
  final Dio dio;

  ApiClient({required this.baseUrl, required this.dio});

  Future<Response> get(String path, {Map<String, dynamic>? queryParameters}) async {
    return dio.get('$baseUrl$path', queryParameters: queryParameters);
  }

  Future<Response> post(String path, {Map<String, dynamic>? data}) async {
    return dio.post('$baseUrl$path', data: data);
  }

  Future<Response> put(String path, {Map<String, dynamic>? data}) async {
    return dio.put('$baseUrl$path', data: data);
  }

  Future<Response> delete(String path) async {
    return dio.delete('$baseUrl$path');
  }
}

