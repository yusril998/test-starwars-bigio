import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:test2/utils/app_config.dart';

import './exception.dart';

class ApiHelper {
  var baseUrl = Env.dev().apiBaseUrl;
  Future<dynamic> get(String url) async {
    var responseJson;
    try {
      final response = await http.get(baseUrl+url);
      log(response.toString());
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }catch(e){
        print(e);
    }
    log("$url Result : " + responseJson.toString());
    return responseJson;
  }

  Future<dynamic> post(String url, request) async {
    var responseJson;
    try {
      final response = await http.post(baseUrl + url, body: request);
       log(response.body.toString());
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  
  dynamic _returnResponse(http.Response response) {
    final result = json.decode(response.body);
    return result;
  }

  dynamic _returnResponseFromString(String response) {
    final result = json.decode(response);
    switch (result["status_code"]) {
      case 200:
        var responseJson = json.decode(response);
        return responseJson;
      case 400:
        throw BadRequestException(response);
      case 401:
      case 403:
        throw UnauthorisedException(response);
      case 500:
      default:
        throw FetchDataException(
            '[${result["status_code"]}] ${result["errors"]}');
    }
  }
}
