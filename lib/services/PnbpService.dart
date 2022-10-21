import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wasdu_mobile2/presentation/assigned_page_pnbp_page/models/assigned_pnbp_model.dart';
import 'package:wasdu_mobile2/services/BaseService.dart';
import 'package:http/http.dart' as http;
import 'package:wasdu_mobile2/services/Services.dart';

import '../presentation/assigned_page_infrastructure_page/models/infra_model.dart';
class PnbpService with BaseService {
  Future index({required String per_page, String? location_id}) async {
    var query = '?per_page=' + per_page + '&location_id=' + location_id!;
  }

   Future getPNBP() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var token = sharedPreferences.get('token');
    var response = await http.get(
        Uri.parse("$baseUrl/my-tasks/pnbps?per_page=10"),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        });
    print(response.body);
    if (response.statusCode != 200) {
      Fluttertoast.showToast(
          msg: 'Error',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
      return;
    } else {
      final res = json.decode(response.body);
      var result = AssignedPNBPModel.fromJson(res);
      return result;
    }
  }
}
