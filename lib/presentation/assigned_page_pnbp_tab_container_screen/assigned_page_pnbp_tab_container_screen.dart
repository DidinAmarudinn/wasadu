import 'controller/assigned_page_pnbp_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:wasdu_mobile2/core/app_export.dart';
import 'package:wasdu_mobile2/presentation/assigned_page_infrastructure_page/assigned_page_infrastructure_page.dart';
import 'package:wasdu_mobile2/presentation/assigned_page_pnbp_page/assigned_page_pnbp_page.dart';
import 'package:wasdu_mobile2/widgets/custom_bottom_bar.dart';

class AssignedPagePnbpTabContainerScreen
    extends GetWidget<AssignedPagePnbpTabContainerController> {
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
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: getPadding(
                    left: 16,
                    top: 20,
                    right: 187,
                    bottom: 15,
                  ),
                  decoration: AppDecoration.txtFillWhiteA700,
                  child: Text(
                    "lbl_assigned_to_you".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoMedium20.copyWith(
                      letterSpacing: 0.15,
                    ),
                  ),
                ),
                Container(
                  width: size.width,
                  decoration: BoxDecoration(
                    color: ColorConstant.whiteA700,
                  ),
                  child: TabBar(
                    controller: controller.tabBar2Controller,
                    tabs: [
                      Tab(
                        text: "lbl_pnbp".tr,
                      ),
                      Tab(
                        text: "lbl_infrastruktur".tr,
                      ),
                    ],
                    labelColor: ColorConstant.blueA701,
                    unselectedLabelColor: ColorConstant.black90099,
                  ),
                ),
                Container(
                  margin: getMargin(
                    left: 12,
                    top: 16,
                    right: 12,
                  ),
                  height: getVerticalSize(
                    500.00,
                  ),
                  child: TabBarView(
                    controller: controller.tabBar2Controller,
                    children: [
                      AssignedPagePnbpPage(),
                      AssignedPageInfrastructurePage(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            controller.type.value = type;
          },
        ),
      ),
    );
  }

  ///Handling view based on bottom click actions
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
