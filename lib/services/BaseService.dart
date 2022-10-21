import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wasdu_mobile2/core/app_export.dart';

import '../main.dart';
import 'AppException.dart';

class BaseService {
  Future handleError(error) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    if (error is BadRequestException) {
      var apiError = json.decode(error.message);
      if (apiError is List) {
        apiError.forEach((v) {
          Fluttertoast.showToast(
              msg: '{$v[message]}',
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0);
        });
      } else {
        Fluttertoast.showToast(
            msg: apiError['message'],
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
      }
    } else if (error is FetchDataException) {
      //offline
      var message = error.message;
      Fluttertoast.showToast(
          msg: message,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    } else if (error is ApiNotRespondingException) {
      Fluttertoast.showToast(
          msg: "Api Not responding",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    } else if (error is UnAuthorizedException) {
      sharedPreferences.clear();
      Fluttertoast.showToast(
          msg: "Silahkan Login Ulang",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);

      Get.toNamed(AppRoutes.loginScreen);
    }
  }
}
