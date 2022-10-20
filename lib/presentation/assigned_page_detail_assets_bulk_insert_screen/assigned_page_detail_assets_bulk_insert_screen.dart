import '../assigned_page_detail_assets_bulk_insert_screen/widgets/listlabel_five_item_widget.dart';
import '../assigned_page_detail_assets_bulk_insert_screen/widgets/listtextfieldoutl_item_widget.dart';
import 'controller/assigned_page_detail_assets_bulk_insert_controller.dart';
import 'models/listlabel_five_item_model.dart';
import 'models/listtextfieldoutl_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wasdu_mobile2/core/app_export.dart';
import 'package:wasdu_mobile2/widgets/custom_bottom_bar.dart';
import 'package:wasdu_mobile2/widgets/custom_button.dart';

class AssignedPageDetailAssetsBulkInsertScreen
    extends GetWidget<AssignedPageDetailAssetsBulkInsertController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                height: getVerticalSize(640.00),
                width: size.width,
                child: Stack(alignment: Alignment.topLeft, children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: SingleChildScrollView(
                          padding: getPadding(bottom: 10),
                          child: Container(
                              height: getVerticalSize(811.00),
                              width: getHorizontalSize(374.00),
                              child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 2, top: 40, bottom: 40),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 19,
                                                              right: 19),
                                                          child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          12.00)),
                                                              child: CommonImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgImage,
                                                                  height: getSize(
                                                                      129.00),
                                                                  width: getSize(
                                                                      129.00),
                                                                  fit: BoxFit
                                                                      .cover)))),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 19,
                                                              top: 24,
                                                              right: 19),
                                                          child: Text(
                                                              "msg_pjuts_10920192"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoMedium20
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          0.15)))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 19,
                                                          top: 41,
                                                          right: 19),
                                                      child: Text(
                                                          "lbl_pejabat".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRegular16
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.15,
                                                                  height:
                                                                      1.00))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 19,
                                                          top: 6,
                                                          right: 19),
                                                      child: Text(
                                                          "lbl_gubernur".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRegular14
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.25,
                                                                  height:
                                                                      1.00))),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 19,
                                                              top: 16,
                                                              right: 19),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .center,
                                                                          child: Padding(
                                                                              padding: getPadding(left: 1),
                                                                              child: Text("lbl_nama_provinsi".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular16.copyWith(letterSpacing: 0.15, height: 1.00)))),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  9,
                                                                              right:
                                                                                  10),
                                                                          child: Text(
                                                                              "lbl_jjawa_timur".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRobotoRegular14.copyWith(letterSpacing: 0.25, height: 1.00)))
                                                                    ]),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        top: 1,
                                                                        bottom:
                                                                            1),
                                                                    child: Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize
                                                                                .min,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .start,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          Padding(
                                                                              padding: getPadding(right: 10),
                                                                              child: Text("lbl_nama_kabupaten".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular16.copyWith(letterSpacing: 0.15, height: 1.00))),
                                                                          Padding(
                                                                              padding: getPadding(top: 7),
                                                                              child: Text("msg_kab_malan_jab".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular14.copyWith(letterSpacing: 0.25, height: 1.00)))
                                                                        ]))
                                                              ]))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 22,
                                                          top: 26,
                                                          right: 22),
                                                      child: Text(
                                                          "lbl_nama_penyedia"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRegular16
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.15,
                                                                  height:
                                                                      1.00))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 22,
                                                          top: 6,
                                                          right: 22),
                                                      child: Text(
                                                          "lbl_pt_wika".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRegular14
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.25,
                                                                  height:
                                                                      1.00))),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 19,
                                                              top: 26,
                                                              right: 19),
                                                          child: Obx(() =>
                                                              ListView.builder(
                                                                  physics:
                                                                      NeverScrollableScrollPhysics(),
                                                                  shrinkWrap:
                                                                      true,
                                                                  itemCount: controller
                                                                      .assignedPageDetailAssetsBulkInsertModelObj
                                                                      .value
                                                                      .listlabelFiveItemList
                                                                      .length,
                                                                  itemBuilder:
                                                                      (context,
                                                                          index) {
                                                                    ListlabelFiveItemModel
                                                                        model =
                                                                        controller
                                                                            .assignedPageDetailAssetsBulkInsertModelObj
                                                                            .value
                                                                            .listlabelFiveItemList[index];
                                                                    return ListlabelFiveItemWidget(
                                                                        model);
                                                                  })))),
                                                  Container(
                                                      width: double.infinity,
                                                      margin:
                                                          getMargin(top: 22),
                                                      decoration: AppDecoration
                                                          .fillWhiteA700,
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            26,
                                                                        top: 16,
                                                                        right:
                                                                            26,
                                                                        bottom:
                                                                            16),
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
                                                                              top:
                                                                                  15,
                                                                              bottom:
                                                                                  15),
                                                                          child: CommonImageView(
                                                                              svgPath: ImageConstant.imgPlus,
                                                                              height: getSize(24.00),
                                                                              width: getSize(24.00))),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  8,
                                                                              top:
                                                                                  15,
                                                                              bottom:
                                                                                  15),
                                                                          child: Text(
                                                                              "lbl_input_opini".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.center,
                                                                              style: AppStyle.txtRobotoMedium16.copyWith(letterSpacing: 0.15, height: 1.50)))
                                                                    ]))
                                                          ]))
                                                ]))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            margin: getMargin(right: 1),
                                            decoration:
                                                AppDecoration.fillBlack90060,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                      width: double.infinity,
                                                      margin: getMargin(
                                                          left: 33,
                                                          top: 27,
                                                          right: 27,
                                                          bottom: 190),
                                                      decoration: AppDecoration
                                                          .outlineBlack9003d
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder4),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            19,
                                                                        top: 29,
                                                                        right:
                                                                            19),
                                                                    child: Text(
                                                                        "msg_masukan_kondisi2"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle.txtRobotoRegular16.copyWith(
                                                                            letterSpacing:
                                                                                0.44,
                                                                            height:
                                                                                1.00)))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            24,
                                                                        top: 22,
                                                                        right:
                                                                            24),
                                                                child: Obx(() => ListView
                                                                    .builder(
                                                                        physics:
                                                                            NeverScrollableScrollPhysics(),
                                                                        shrinkWrap:
                                                                            true,
                                                                        itemCount: controller
                                                                            .assignedPageDetailAssetsBulkInsertModelObj
                                                                            .value
                                                                            .listtextfieldoutlItemList
                                                                            .length,
                                                                        itemBuilder:
                                                                            (context,
                                                                                index) {
                                                                          ListtextfieldoutlItemModel model = controller
                                                                              .assignedPageDetailAssetsBulkInsertModelObj
                                                                              .value
                                                                              .listtextfieldoutlItemList[index];
                                                                          return ListtextfieldoutlItemWidget(
                                                                              model);
                                                                        }))),
                                                            CustomButton(
                                                                width: 265,
                                                                text: "lbl_upload"
                                                                    .tr
                                                                    .toUpperCase(),
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            19,
                                                                        top: 32,
                                                                        right:
                                                                            19),
                                                                alignment:
                                                                    Alignment
                                                                        .center),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            19,
                                                                        top: 34,
                                                                        right:
                                                                            19),
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
                                                                              imagePath: ImageConstant.imgImage46X87,
                                                                              height: getVerticalSize(46.00),
                                                                              width: getHorizontalSize(87.00)),
                                                                          Padding(
                                                                              padding: getPadding(left: 4, top: 1, bottom: 1),
                                                                              child: CommonImageView(imagePath: ImageConstant.imgImage45X83, height: getVerticalSize(45.00), width: getHorizontalSize(83.00))),
                                                                          Padding(
                                                                              padding: getPadding(left: 4, top: 1, bottom: 1),
                                                                              child: CommonImageView(imagePath: ImageConstant.imgImage1, height: getVerticalSize(45.00), width: getHorizontalSize(83.00)))
                                                                        ]))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            1.00),
                                                                    width: getHorizontalSize(
                                                                        153.00),
                                                                    margin: getMargin(
                                                                        left:
                                                                            19,
                                                                        top: 41,
                                                                        right:
                                                                            19),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                            color:
                                                                                ColorConstant.gray900)))
                                                          ]))
                                                ])))
                                  ])))),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                          width: size.width,
                          margin: getMargin(bottom: 10),
                          decoration: BoxDecoration(
                              color: ColorConstant.whiteA700,
                              boxShadow: [
                                BoxShadow(
                                    color: ColorConstant.black9003d,
                                    spreadRadius: getHorizontalSize(2.00),
                                    blurRadius: getHorizontalSize(2.00),
                                    offset: Offset(0, 2))
                              ]),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                              svgPath:
                                                  ImageConstant.imgArrowleft,
                                              height: getSize(24.00),
                                              width: getSize(24.00))),
                                      Padding(
                                          padding: getPadding(
                                              left: 32, top: 1, bottom: 3),
                                          child: Text("lbl_pjuts_10920192".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtRobotoMedium20
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
                                              svgPath:
                                                  ImageConstant.imgOverflowmenu,
                                              height: getSize(24.00),
                                              width: getSize(24.00)))
                                    ])
                              ])))
                ])),
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
