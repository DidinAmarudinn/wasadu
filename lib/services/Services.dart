import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:developer';
import 'package:shared_preferences/shared_preferences.dart';

import 'AppException.dart';

const String baseUrlLive = "";
const String baseUrl = "http://10.0.2.2:8000/api";

class Services {
  // apiGet(args) async {
  //   log("Getting data into $baseUrl$args");
  //
  //   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  //   var token = sharedPreferences.get('token');
  //
  //   final response = await http.get(
  //     Uri.parse("${baseUrl}${args}"),
  //     headers: {
  //       'Content-Type': 'application/json',
  //       'Accept': 'application/json',
  //       'Authorization': 'Bearer $token',
  //     },
  //     // body: json.encode(data),
  //   ).timeout(const Duration(seconds: 60));
  //
  //   log("============== finished requested ======================");
  //   log("Response from servers: ");
  //   log("Body" + response.body);
  //
  //   return response;
  // }

  apiGet(url, query) async {
    var uri = Uri.parse(baseUrl + '/' + url + query);
    log("$uri");

    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var token = sharedPreferences.get('token');

    try {
      var response = await http.get(
        uri,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      ).timeout(const Duration(seconds: 60));

      log("============== finished requested ======================");
      log("Response from servers: ");
      log("Body " + response.body);

      return _processResponse(response);
    } on SocketException {
      throw FetchDataException(
          message: 'No Internet connection', url: uri.toString());
    } on TimeoutException {
      throw ApiNotRespondingException(
          message: 'API not responded in time', url: uri.toString());
    }
  }

  apiPost(url, Object body) async {
    var uri = Uri.parse(baseUrl + '/' + url);
    log("data body $body");
    log("$uri");

    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var token = sharedPreferences.get('token');

    try {
      var response = await http
          .post(
            uri,
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Authorization': 'Bearer $token',
            },
            body: jsonEncode(body),
          )
          .timeout(const Duration(seconds: 60));

      log("============== finished requested ======================");
      log("Response from servers: ");
      log("Body " + response.body);

      return _processResponse(response);
    } on SocketException {
      log('masuk socket exception');
      throw FetchDataException(
          message: 'No Internet connection', url: uri.toString());
    } on TimeoutException {
      log('masuk timeout exception');
      throw ApiNotRespondingException(
          message: 'API not responded in time', url: uri.toString());
    }
  }

  dynamic _processResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = utf8.decode(response.bodyBytes);
        return responseJson;
        break;
      case 201:
        var responseJson = utf8.decode(response.bodyBytes);
        return responseJson;
        break;
      case 400:
        throw BadRequestException(
            message: utf8.decode(response.bodyBytes),
            url: response.request!.url.toString());
      case 401:
      case 403:
        throw UnAuthorizedException(
            message: utf8.decode(response.bodyBytes),
            url: response.request!.url.toString());
      case 422:
        throw BadRequestException(
            message: utf8.decode(response.bodyBytes),
            url: response.request!.url.toString());
      case 500:
      default:
        throw FetchDataException(
            message: 'Error occurred with code : ${response.statusCode}',
            url: response.request!.url.toString());
    }
  }
}
