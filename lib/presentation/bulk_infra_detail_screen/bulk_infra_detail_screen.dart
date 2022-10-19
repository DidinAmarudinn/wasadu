import '../bulk_infra_detail_screen/widgets/listlabel_one2_item_widget.dart';
import 'controller/bulk_infra_detail_controller.dart';
import 'models/listlabel_one2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wasdu_mobile2/core/app_export.dart';
import 'package:wasdu_mobile2/widgets/custom_bottom_bar.dart';

class BulkInfraDetailScreen extends GetWidget<BulkInfraDetailController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                    onTap: () {
                                      onTapImgArrowleft();
                                    },
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgArrowleft,
                                        height: getSize(24.00),
                                        width: getSize(24.00))),
                                Container(
                                    margin: getMargin(top: 1, bottom: 3),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "lbl_ltshe".tr,
                                              style: TextStyle(
                                                  color:
                                                      ColorConstant.black900Dd,
                                                  fontSize: getFontSize(20),
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w500,
                                                  letterSpacing: 0.15)),
                                          TextSpan(
                                              text: "lbl_lt220000001".tr,
                                              style: TextStyle(
                                                  color:
                                                      ColorConstant.black900Dd,
                                                  fontSize: getFontSize(20),
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w400,
                                                  letterSpacing: 0.15))
                                        ]),
                                        textAlign: TextAlign.left)),
                                CommonImageView(
                                    svgPath: ImageConstant.imgStar,
                                    height: getSize(24.00),
                                    width: getSize(24.00)),
                                CommonImageView(
                                    svgPath: ImageConstant.imgOverflowmenu,
                                    height: getSize(24.00),
                                    width: getSize(24.00))
                              ]))),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: getPadding(left: 1, top: 31, right: 2),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding:
                                                getPadding(left: 20, right: 20),
                                            child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            12.00)),
                                                child: CommonImageView(
                                                    imagePath:
                                                        ImageConstant.imgImage,
                                                    height: getSize(129.00),
                                                    width: getSize(129.00),
                                                    fit: BoxFit.cover)))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 20, top: 19, right: 20),
                                            child: Text("msg_ltshe_1902931".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoMedium20
                                                    .copyWith(
                                                        letterSpacing: 0.15)))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 102, top: 5, right: 102),
                                            child: Text("lbl_lt220000001".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRegular14
                                                    .copyWith(
                                                        letterSpacing: 0.25,
                                                        height: 1.00)))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 20, top: 36, right: 20),
                                            child: Obx(() => ListView.builder(
                                                physics:
                                                    NeverScrollableScrollPhysics(),
                                                shrinkWrap: true,
                                                itemCount: controller
                                                    .bulkInfraDetailModelObj
                                                    .value
                                                    .listlabelOne2ItemList
                                                    .length,
                                                itemBuilder: (context, index) {
                                                  ListlabelOne2ItemModel model =
                                                      controller
                                                          .bulkInfraDetailModelObj
                                                          .value
                                                          .listlabelOne2ItemList[index];
                                                  return ListlabelOne2ItemWidget(
                                                      model);
                                                })))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 21, top: 25, right: 21),
                                            child: Text("lbl_nama_paket".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRegular16
                                                    .copyWith(
                                                        letterSpacing: 0.15,
                                                        height: 1.00)))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            width: getHorizontalSize(314.00),
                                            margin: getMargin(
                                                left: 21, top: 9, right: 21),
                                            child: Text(
                                                "msg_pemasangan_pene".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRegular14
                                                    .copyWith(
                                                        letterSpacing: 0.25,
                                                        height: 1.43)))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: GestureDetector(
                                            onTap: () {
                                              onTapCTAButton1();
                                            },
                                            child: Container(
                                                width: double.infinity,
                                                margin: getMargin(top: 34),
                                                decoration:
                                                    AppDecoration.fillWhiteA700,
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                          margin: getMargin(
                                                              left: 26,
                                                              top: 16,
                                                              right: 26,
                                                              bottom: 16),
                                                          decoration: AppDecoration
                                                              .outlineBlueA701
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .circleBorder27),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                    padding: getPadding(
                                                                        top: 15,
                                                                        bottom:
                                                                            15),
                                                                    child: CommonImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgPlus,
                                                                        height: getSize(
                                                                            24.00),
                                                                        width: getSize(
                                                                            24.00))),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left: 8,
                                                                        top: 18,
                                                                        bottom:
                                                                            19),
                                                                    child: Text(
                                                                        "lbl_input_opini"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .center,
                                                                        style: AppStyle.txtRobotoMedium16.copyWith(
                                                                            letterSpacing:
                                                                                0.15,
                                                                            height:
                                                                                1.00)))
                                                              ]))
                                                    ]))))
                                  ]))))
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

  onTapCTAButton1() {
    Get.toNamed(AppRoutes.assignedPageDetailAssetsBulkInsertScreen);
  }
}
