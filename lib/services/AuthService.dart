import 'dart:convert';
import 'package:wasdu_mobile2/presentation/login_screen/models/login_model.dart';
import 'BaseService.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Services.dart';

class AuthService with BaseService {
  Future login({required String email, required String password}) async {
    var bodyJson = {
      'email': email,
      'password': password,
    };
    var response = await Services()
        .apiPost("auth/login", bodyJson)
        .catchError(handleError);

    if (response == null) return;
    Fluttertoast.showToast(
        msg: 'Berhasil Masuk',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0);
    var result = LoginModel.fromJson(json.decode(response)['data']);
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString('token', result.api_token!);

    return result;
  }

  Future logout() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.remove('token');

    Fluttertoast.showToast(
        msg: 'Kamu Berhasil Keluar',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0);

    return true;
  }
}
