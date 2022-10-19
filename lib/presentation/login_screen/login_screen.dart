import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:wasdu_mobile2/core/app_export.dart';
import 'package:wasdu_mobile2/core/utils/validation_functions.dart';
import 'package:wasdu_mobile2/widgets/custom_button.dart';
import 'package:wasdu_mobile2/widgets/custom_text_form_field.dart';

class LoginScreen extends GetWidget<LoginController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
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
                  CustomTextFormField(
                    width: 315,
                    focusNode: FocusNode(),
                    controller: controller.vinputslotController,
                    hintText: "msg_masukkan_userna".tr,
                    margin: getMargin(
                      left: 30,
                      top: 293,
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
                    controller: controller.vinputslotOneController,
                    hintText: "msg_masukkan_passwo".tr,
                    margin: getMargin(
                      left: 30,
                      top: 23,
                      right: 30,
                    ),
                    variant: TextFormFieldVariant.OutlineBlack9006b,
                    padding: TextFormFieldPadding.PaddingAll12,
                    textInputAction: TextInputAction.done,
                    validator: (value) {
                      if (value == null ||
                          (!isValidPassword(value, isRequired: true))) {
                        return "Please enter valid password";
                      }
                      return null;
                    },
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
                      onTap: onTapBtnLogin),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  onTapBtnLogin() {
    Get.toNamed(AppRoutes.assignedPagePnbpTabContainerScreen);
  }
}
