// ignore_for_file: public_member_api_docs, sort_constructors_first


import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;
  const ApiService(this._dio,);
  Future<Map<String, dynamic>> get({required String endpoint}) async {
    var response = await _dio.get(endpoint);
    return response.data;
  }
  
}
