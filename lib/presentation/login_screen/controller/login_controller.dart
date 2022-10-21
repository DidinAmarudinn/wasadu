import '/core/app_export.dart';
import 'package:wasdu_mobile2/presentation/login_screen/models/login_model.dart';
import 'package:flutter/material.dart';

class LoginController extends GetxController {
  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  Rx<LoginModel> loginModelObj = LoginModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    email.dispose();
    password.dispose();
  }
}
