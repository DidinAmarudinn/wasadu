import 'package:shared_preferences/shared_preferences.dart';
import 'package:wasdu_mobile2/presentation/assigned_page_pnbp_tab_container_screen/assigned_page_pnbp_tab_container_screen.dart';
import 'package:wasdu_mobile2/services/AuthService.dart';

import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:wasdu_mobile2/core/app_export.dart';
import 'package:wasdu_mobile2/core/utils/validation_functions.dart';
import 'package:wasdu_mobile2/widgets/custom_button.dart';
import 'package:wasdu_mobile2/widgets/custom_text_form_field.dart';

class LoginScreen extends GetWidget<LoginController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initialize() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    preferences = await SharedPreferences.getInstance();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                      padding: getPadding(left: 24, top: 137, right: 24),
                      child: CommonImageView(
                          imagePath: ImageConstant.imgRectangle1,
                          height: getVerticalSize(63.00),
                          width: getHorizontalSize(327.00))),
                  Container(
                      width: getHorizontalSize(276.00),
                      margin: getMargin(left: 24, top: 22, right: 24),
                      child: Text("msg_mobile_data_col".tr.toUpperCase(),
                          maxLines: null,
                          textAlign: TextAlign.center,
                          style: AppStyle.txtRobotoBold12
                              .copyWith(letterSpacing: 1.25, height: 1.33))),
                  CustomTextFormField(
                    width: 315,
                    focusNode: FocusNode(),
                    controller: controller.email,
                    hintText: "msg_masukkan_userna".tr,
                    margin: getMargin(
                      left: 30,
                      top: 120,
                      right: 30,
                    ),
                    variant: TextFormFieldVariant.OutlineBlack9006b,
                    padding: TextFormFieldPadding.PaddingAll12,
                    validator: (value) {
                      if (value == null ||
                          (!isValidEmail(value, isRequired: true))) {
                        return "Please enter valid email";
                      }
                      return null;
                    },
                  ),
                  CustomTextFormField(
                    width: 315,
                    focusNode: FocusNode(),
                    controller: controller.password,
                    hintText: "Masukkan Password".tr,
                    margin: getMargin(
                      left: 30,
                      top: 23,
                      right: 30,
                    ),
                    variant: TextFormFieldVariant.OutlineBlack9006b,
                    padding: TextFormFieldPadding.PaddingAll12,
                    textInputAction: TextInputAction.done,
                    isObscureText: true,
                  ),
                  CustomButton(
                      width: 197,
                      text: "lbl_login".tr.toUpperCase(),
                      margin: getMargin(
                        left: 30,
                        top: 63,
                        right: 30,
                        bottom: 20,
                      ),
                      variant: ButtonVariant.FillBlue700,
                      padding: ButtonPadding.PaddingAll15,
                      onTap: () => onTapBtnLogin(context)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  onTapBtnLogin(BuildContext context) async {
    var result = await AuthService().login(
        email: controller.email.text, password: controller.password.text);
    if (result != null) {
      Navigator.of(context).pop();
      Navigator.of(context).pushNamedAndRemoveUntil(
          AppRoutes.assignedPagePnbpTabContainerScreen, (route) => false);
    }
  }
}
