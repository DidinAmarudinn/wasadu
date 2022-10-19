import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:wasdu_mobile2/core/app_export.dart';
import 'package:wasdu_mobile2/widgets/custom_button.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
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
                      Padding(
                          padding: getPadding(left: 24, top: 78, right: 24),
                          child: Text("lbl_selamat_datang".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoBold24)),
                      Container(
                          width: getHorizontalSize(276.00),
                          margin: getMargin(left: 24, top: 22, right: 24),
                          child: Text("msg_mobile_data_col".tr.toUpperCase(),
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtRobotoBold12.copyWith(
                                  letterSpacing: 1.25, height: 1.33))),
                      CustomButton(
                          width: 295,
                          text: "lbl_sign_in".tr.toUpperCase(),
                          margin: getMargin(
                              left: 24, top: 171, right: 24, bottom: 20),
                          variant: ButtonVariant.FillWhiteA700,
                          padding: ButtonPadding.PaddingAll18,
                          fontStyle: ButtonFontStyle.RobotoMedium14,
                          onTap: onTapBtnSignin)
                    ])))));
  }

  onTapBtnSignin() {
    Get.toNamed(AppRoutes.loginScreen);
  }
}
