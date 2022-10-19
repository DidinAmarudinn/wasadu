import '/core/app_export.dart';
import 'package:wasdu_mobile2/presentation/login_screen/models/login_model.dart';
import 'package:flutter/material.dart';

class LoginController extends GetxController {
  TextEditingController vinputslotController = TextEditingController();

  TextEditingController vinputslotOneController = TextEditingController();

  Rx<LoginModel> loginModelObj = LoginModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    vinputslotController.dispose();
    vinputslotOneController.dispose();
  }
}
