import 'dart:convert';

import 'package:chat_app/Repository/Login/SendLoginRequest.dart';
import 'package:dio/dio.dart';

import 'BasicResponse.dart';

class LoginRepository{
  LoginRepository({required this.dio}) {
    dio.options.headers['content-Type'] = 'application/json; charset=UTF-8';
    dio.options.headers['Access-Control-Allow-Origin'] = '*';
    dio.options.baseUrl = "http://localhost:8080";

  }
  final Dio dio;

  Future<BasicResponse> sendLogin(SendLoginRequest request) async{
    try{
      final response = await dio.post(
        '/login',
        data: jsonEncode(request),
      );

      return BasicResponse.fromJson(json: jsonDecode(response.data));
    }on DioError catch (e){
      print("Cannot send the login information: \n $e");
      return const BasicResponse(success: false, description: 'Failed to send login information');
    }
  }
}