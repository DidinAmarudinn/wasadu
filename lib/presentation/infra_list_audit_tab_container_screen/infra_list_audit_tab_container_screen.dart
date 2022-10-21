import 'controller/infra_list_audit_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:wasdu_mobile2/core/app_export.dart';
import 'package:wasdu_mobile2/presentation/individual_infra_detail_infra_list_page/individual_infra_detail_infra_list_page.dart';
import 'package:wasdu_mobile2/presentation/individual_infra_detail_page/individual_infra_detail_page.dart';
import 'package:wasdu_mobile2/widgets/custom_bottom_bar.dart';
import 'package:wasdu_mobile2/widgets/custom_button.dart';

class InfraListAuditTabContainerScreen
    extends GetWidget<InfraListAuditTabContainerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          width: size.width,
                          decoration: BoxDecoration(
                              color: ColorConstant.whiteA700,
                              boxShadow: [
                                BoxShadow(
                                    color: ColorConstant.black9003d,
                                    spreadRadius: getHorizontalSize(2.00),
                                    blurRadius: getHorizontalSize(2.00),
                                    offset: Offset(0, 2))
                              ]),
                          child: Padding(
                              padding: getPadding(all: 16),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          InkWell(
                                              onTap: () {
                                                onTapImgArrowleft();
                                              },
                                              child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowleft,
                                                  height: getSize(24.00),
                                                  width: getSize(24.00))),
                                          Padding(
                                              padding: getPadding(
                                                  left: 32, top: 1, bottom: 3),
                                              child: Text(
                                                  "lbl_pjuts_19029312".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoMedium20
                                                      .copyWith(
                                                          letterSpacing: 0.15)))
                                        ]),
                                    Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          CommonImageView(
                                              svgPath: ImageConstant.imgStar,
                                              height: getSize(24.00),
                                              width: getSize(24.00)),
                                          Padding(
                                              padding: getPadding(left: 16),
                                              child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgOverflowmenu,
                                                  height: getSize(24.00),
                                                  width: getSize(24.00)))
                                        ])
                                  ])))),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: SingleChildScrollView(
                        child: Container(
                          height: getVerticalSize(910.00),
                          width: getHorizontalSize(374.00),
                          margin: getMargin(right: 1),
                          child: Stack(
                            alignment: Alignment.topLeft,
                            children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding:
                                      getPadding(left: 1, top: 10, right: 3),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                          padding:
                                              getPadding(left: 12, right: 12),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(12.00)),
                                            child: CommonImageView(
                                              imagePath: ImageConstant.imgImage,
                                              height: getSize(129.00),
                                              width: getSize(129.00),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                              padding: getPadding(
                                                  left: 12, top: 19, right: 12),
                                              child: Text(
                                                  "msg_pjuts_1902931".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoMedium20
                                                      .copyWith(
                                                          letterSpacing:
                                                              0.15)))),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: getPadding(
                                                  left: 102,
                                                  top: 5,
                                                  right: 102),
                                              child: Text("lbl_pj220000001".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRegular14
                                                      .copyWith(
                                                          letterSpacing: 0.25,
                                                          height: 1.00)))),
                                      Container(
                                        width: getHorizontalSize(302.00),
                                        margin: getMargin(left: 10, top: 23),
                                        child: TabBar(
                                            controller:
                                                controller.vtabitemsController,
                                            tabs: [
                                              Tab(text: "lbl_detail".tr),
                                              Tab(text: "lbl_infra_list".tr)
                                            ],
                                            labelColor: ColorConstant.blue700,
                                            unselectedLabelColor:
                                                ColorConstant.black90089),
                                      ),
                                      Container(
                                        margin: getMargin(
                                            left: 10, top: 27, right: 10),
                                        height: getVerticalSize(535.00),
                                        child: TabBarView(
                                          controller:
                                              controller.vtabitemsController,
                                          children: [
                                            IndividualInfraDetailPage(null),
                                            IndividualInfraDetailInfraListPage()
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  margin: getMargin(bottom: 10),
                                  decoration: AppDecoration.fillBlack90060,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        margin: getMargin(
                                            left: 33,
                                            top: 36,
                                            right: 28,
                                            bottom: 32),
                                        decoration: AppDecoration
                                            .outlineBlack9003d
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder4),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                padding: getPadding(
                                                    left: 64,
                                                    top: 27,
                                                    right: 64),
                                                child: Text(
                                                  "msg_pjuts_pj220005".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRegular16Black900
                                                      .copyWith(
                                                    letterSpacing: 0.50,
                                                    height: 1.00,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                padding: getPadding(
                                                    left: 40,
                                                    top: 17,
                                                    right: 40),
                                                child: Text(
                                                  "msg_kondisi_terakhi".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRegular16
                                                      .copyWith(
                                                    letterSpacing: 0.15,
                                                    height: 1.00,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                padding: getPadding(
                                                    left: 40,
                                                    top: 9,
                                                    right: 40),
                                                child: Text(
                                                  "msg_a1_menyala_fi".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRegular14
                                                      .copyWith(
                                                    letterSpacing: 0.25,
                                                    height: 1.00,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                padding: getPadding(
                                                    left: 24,
                                                    top: 32,
                                                    right: 24),
                                                child: Text(
                                                  "msg_masukkan_kondis".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRegular16Black900
                                                      .copyWith(
                                                    letterSpacing: 0.50,
                                                    height: 1.00,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            CustomButton(
                                                width: 249,
                                                text: "msg_a1_menyala_fi".tr,
                                                margin: getMargin(
                                                    left: 24,
                                                    top: 4,
                                                    right: 24),
                                                variant: ButtonVariant
                                                    .OutlineBlack9006b,
                                                fontStyle: ButtonFontStyle
                                                    .RobotoRegular16,
                                                suffixWidget: Container(
                                                    margin: getMargin(left: 11),
                                                    child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgVicon)),
                                                alignment:
                                                    Alignment.centerLeft),
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Container(
                                                width: double.infinity,
                                                margin: getMargin(
                                                    left: 24,
                                                    top: 22,
                                                    right: 24),
                                                decoration: AppDecoration
                                                    .outlineBlack9001e
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder4),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Padding(
                                                        padding: getPadding(
                                                            left: 12,
                                                            top: 12,
                                                            right: 12,
                                                            bottom: 91),
                                                        child: Text(
                                                          "lbl_deskripsi".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRegular16
                                                              .copyWith(
                                                            letterSpacing: 0.50,
                                                            height: 1.00,
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            CustomButton(
                                                width: 265,
                                                text: "lbl_upload"
                                                    .tr
                                                    .toUpperCase(),
                                                margin: getMargin(
                                                    left: 24,
                                                    top: 34,
                                                    right: 24),
                                                alignment: Alignment.center),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 24,
                                                        top: 18,
                                                        right: 24),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          CommonImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgImage46X87,
                                                              height:
                                                                  getVerticalSize(
                                                                      46.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      87.00)),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 4,
                                                                      top: 1,
                                                                      bottom:
                                                                          1),
                                                              child: CommonImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgImage45X83,
                                                                  height:
                                                                      getVerticalSize(
                                                                          45.00),
                                                                  width: getHorizontalSize(
                                                                      83.00))),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 4,
                                                                      top: 1,
                                                                      bottom:
                                                                          1),
                                                              child: CommonImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgImage1,
                                                                  height:
                                                                      getVerticalSize(
                                                                          45.00),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          83.00)))
                                                        ]))),
                                            CustomButton(
                                                width: 153,
                                                text: "lbl_simpan".tr,
                                                margin: getMargin(
                                                    left: 24,
                                                    top: 36,
                                                    right: 24,
                                                    bottom: 17),
                                                variant:
                                                    ButtonVariant.FillGray900,
                                                padding:
                                                    ButtonPadding.PaddingAll15,
                                                alignment: Alignment.center)
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ]),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              controller.type.value = type;
            })));
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

  onTapImgArrowleft() {
    Get.back();
  }
}
