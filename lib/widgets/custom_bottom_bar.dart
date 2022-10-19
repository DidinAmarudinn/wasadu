import 'package:flutter/material.dart';
import 'package:wasdu_mobile2/core/app_export.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({this.onChanged});

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgCategory,
      title: "lbl_assigned".tr,
      type: BottomBarEnum.Assigned,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgCheckmark,
      title: "lbl_history".tr,
      type: BottomBarEnum.History,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNotification,
      title: "lbl_notification".tr,
      type: BottomBarEnum.Notification,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgUser,
      title: "lbl_user".tr,
      type: BottomBarEnum.User,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        margin: getMargin(
          right: 1,
        ),
        decoration: BoxDecoration(),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          currentIndex: selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CommonImageView(
                    svgPath: bottomMenuList[index].icon,
                    height: getVerticalSize(
                      24.00,
                    ),
                    width: getHorizontalSize(
                      23.00,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 3,
                    ),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoRegular12.copyWith(
                        letterSpacing: 0.40,
                        height: 1.00,
                        color: ColorConstant.gray900,
                      ),
                    ),
                  ),
                ],
              ),
              activeIcon: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CommonImageView(
                    svgPath: bottomMenuList[index].icon,
                    height: getVerticalSize(
                      24.00,
                    ),
                    width: getHorizontalSize(
                      25.00,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 3,
                    ),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoRegular12.copyWith(
                        letterSpacing: 0.40,
                        height: 1.00,
                        color: ColorConstant.gray900,
                      ),
                    ),
                  ),
                ],
              ),
              label: '',
            );
          }),
          onTap: (index) {
            selectedIndex.value = index;
            onChanged!(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Assigned,
  History,
  Notification,
  User,
}

class BottomMenuModel {
  BottomMenuModel({required this.icon, this.title, required this.type});

  String icon;

  String? title;

  BottomBarEnum type;
}

///Set default widget when screen is not configured with bottom menu
Widget getDefaultWidget() {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.all(10),
    child: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Please replace the respective Widget here',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    ),
  );
}
