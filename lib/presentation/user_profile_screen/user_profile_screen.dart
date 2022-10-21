import 'package:flutter/material.dart';
import 'package:wasdu_mobile2/core/app_export.dart';
import 'package:wasdu_mobile2/services/AuthService.dart';
import 'package:wasdu_mobile2/widgets/custom_bottom_bar.dart';
import 'package:wasdu_mobile2/widgets/custom_button.dart';

class UserProfileScreen extends StatelessWidget {
  BottomBarEnum type = BottomBarEnum.User;

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
                    child: Text("UNDER CONSTRUCTION",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoBold24)),
                Container(
                  width: getHorizontalSize(276.00),
                  margin: getMargin(left: 24, top: 22, right: 24),
                  child: Text(
                      "Halaman User ini dalam proses pengembangan"
                          .toUpperCase(),
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtRobotoBold12
                          .copyWith(letterSpacing: 1.25, height: 1.33)),
                ),
                CustomButton(
                    width: 295,
                    text: "KELUAR".tr.toUpperCase(),
                    margin:
                        getMargin(left: 24, top: 171, right: 24, bottom: 20),
                    variant: ButtonVariant.OutlineBlueA701,
                    padding: ButtonPadding.PaddingAll18,
                    fontStyle: ButtonFontStyle.RobotoMedium14,
                    onTap: () => onTapBtnLogout(context))
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            type = type;
          },
        ),
      ),
    );
  }

  onTapBtnLogout(BuildContext context) async {
    var logout = await AuthService().logout();
    if (logout) {
      Navigator.of(context).pop();
      Navigator.of(context)
          .pushNamedAndRemoveUntil(AppRoutes.loginScreen, (route) => false);
    }
  }

  Widget getCurrentWidget(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Assigned:
        return getDefaultWidget();
      case BottomBarEnum.History:
        return getDefaultWidget();
      case BottomBarEnum.Notification:
        return getDefaultWidget();
      case BottomBarEnum.User:
        return getDefaultWidget();
      default:
        return getDefaultWidget();
    }
  }
}
