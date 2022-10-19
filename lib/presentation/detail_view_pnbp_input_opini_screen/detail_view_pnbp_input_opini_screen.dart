import 'controller/detail_view_pnbp_input_opini_controller.dart';
import 'package:flutter/material.dart';
import 'package:wasdu_mobile2/core/app_export.dart';
import 'package:wasdu_mobile2/widgets/custom_bottom_bar.dart';
import 'package:wasdu_mobile2/widgets/custom_button.dart';
import 'package:wasdu_mobile2/widgets/custom_switch.dart';
import 'package:wasdu_mobile2/widgets/custom_text_form_field.dart';

class DetailViewPnbpInputOpiniScreen
    extends GetWidget<DetailViewPnbpInputOpiniController> {
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
                              height: getVerticalSize(861.00),
                              width: getHorizontalSize(374.00),
                              child: Stack(
                                  alignment: Alignment.centerLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 3,
                                                top: 16,
                                                right: 10,
                                                bottom: 16),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 18,
                                                              right: 18),
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
                                                              left: 18,
                                                              top: 20,
                                                              right: 18),
                                                          child: Text(
                                                              "msg_operasi_produks2"
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
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 18,
                                                              top: 47,
                                                              right: 18),
                                                          child: Text(
                                                              "lbl_pejabat".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign: TextAlign
                                                                  .left,
                                                              style: AppStyle
                                                                  .txtRobotoRegular16
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          0.15,
                                                                      height:
                                                                          1.00)))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 18,
                                                              top: 6,
                                                              right: 18),
                                                          child: Text(
                                                              "lbl_gubernur".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign: TextAlign
                                                                  .left,
                                                              style: AppStyle
                                                                  .txtRobotoRegular14
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          0.25,
                                                                      height:
                                                                          1.00)))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 21,
                                                              top: 16,
                                                              right: 21),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                    padding: getPadding(
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
                                                                          Text(
                                                                              "lbl_nama_provinsi".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRobotoRegular16.copyWith(letterSpacing: 0.15, height: 1.00)),
                                                                          Padding(
                                                                              padding: getPadding(top: 7, right: 10),
                                                                              child: Text("lbl_jambi".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular14.copyWith(letterSpacing: 0.25, height: 1.00)))
                                                                        ])),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            70,
                                                                        top: 1),
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
                                                                          Text(
                                                                              "lbl_nama_kabupaten".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRobotoRegular16.copyWith(letterSpacing: 0.15, height: 1.00)),
                                                                          Padding(
                                                                              padding: getPadding(top: 6, right: 10),
                                                                              child: Text("lbl_kab_sarol".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular14.copyWith(letterSpacing: 0.25, height: 1.00)))
                                                                        ]))
                                                              ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 21,
                                                              top: 26,
                                                              right: 21),
                                                          child: Text(
                                                              "lbl_nama_perusahaan"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoRegular16
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          0.15,
                                                                      height:
                                                                          1.00)))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 21,
                                                              top: 7,
                                                              right: 21),
                                                          child: Text(
                                                              "lbl_pt_bangun_pers"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoRegular14
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          0.25,
                                                                      height:
                                                                          1.00)))),
                                                  Align(
                                                      alignment: Alignment
                                                          .centerLeft,
                                                      child: Padding(
                                                          padding:
                                                              getPadding(
                                                                  left: 21,
                                                                  top: 26,
                                                                  right: 21),
                                                          child: Text(
                                                              "lbl_sk_iup".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoRegular16
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          0.15,
                                                                      height:
                                                                          1.00)))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 21,
                                                              top: 8,
                                                              right: 21),
                                                          child: Text(
                                                              "msg_78_kep_ka_dpm_p"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoRegular14
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          0.25,
                                                                      height:
                                                                          1.00)))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 21,
                                                              top: 27,
                                                              right: 21),
                                                          child: Text(
                                                              "lbl_tanggal_berlaku"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoRegular16
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          0.15,
                                                                      height:
                                                                          1.00)))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 21,
                                                              top: 6,
                                                              right: 21),
                                                          child: Text(
                                                              "lbl_43560_47857"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign: TextAlign
                                                                  .left,
                                                              style: AppStyle
                                                                  .txtRobotoRegular14
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          0.25,
                                                                      height:
                                                                          1.00)))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 21,
                                                              top: 27,
                                                              right: 21),
                                                          child: Text(
                                                              "lbl_tanggal_berlaku"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoRegular16
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          0.15,
                                                                      height:
                                                                          1.00)))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 21,
                                                              top: 2,
                                                              right: 21),
                                                          child: Text(
                                                              "lbl_43560_47857"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign: TextAlign
                                                                  .left,
                                                              style: AppStyle
                                                                  .txtRobotoRegular14
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          0.25,
                                                                      height:
                                                                          1.00)))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 21,
                                                              top: 26,
                                                              right: 21),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
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
                                                                      Text(
                                                                          "lbl_luas_sk"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle.txtRobotoRegular16.copyWith(
                                                                              letterSpacing: 0.15,
                                                                              height: 1.50)),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              right:
                                                                                  10),
                                                                          child: Text(
                                                                              "lbl_700".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRobotoRegular14.copyWith(letterSpacing: 0.25, height: 1.43)))
                                                                    ]),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            117),
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
                                                                              padding: getPadding(right: 8),
                                                                              child: Text("lbl_cnc".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular16.copyWith(letterSpacing: 0.15, height: 1.50))),
                                                                          Text(
                                                                              "lbl_cnc_3".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRobotoRegular14.copyWith(letterSpacing: 0.25, height: 1.43))
                                                                        ]))
                                                              ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Container(
                                                          width:
                                                              double.infinity,
                                                          margin: getMargin(
                                                              top: 43),
                                                          decoration:
                                                              AppDecoration
                                                                  .fillWhiteA700,
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Container(
                                                                    margin: getMargin(
                                                                        left:
                                                                            20,
                                                                        top: 16,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            16),
                                                                    decoration: AppDecoration
                                                                        .outlineBlueA701
                                                                        .copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .circleBorder27),
                                                                    child: Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment
                                                                                .center,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .center,
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Padding(
                                                                              padding: getPadding(top: 15, bottom: 15),
                                                                              child: CommonImageView(svgPath: ImageConstant.imgPlus, height: getSize(24.00), width: getSize(24.00))),
                                                                          Padding(
                                                                              padding: getPadding(left: 8, top: 15, bottom: 15),
                                                                              child: Text("lbl_input_opini".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoMedium16.copyWith(letterSpacing: 0.15, height: 1.50)))
                                                                        ]))
                                                              ])))
                                                ]))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
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
                                                          top: 36,
                                                          right: 28,
                                                          bottom: 253),
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
                                                                            21,
                                                                        top: 29,
                                                                        right:
                                                                            21),
                                                                    child: Text(
                                                                        "msg_masukan_kondisi"
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
                                                                            27,
                                                                        top: 36,
                                                                        right:
                                                                            27),
                                                                child: Text(
                                                                    "lbl_rkab"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular16
                                                                        .copyWith(
                                                                            letterSpacing:
                                                                                0.15,
                                                                            height:
                                                                                1.00))),
                                                            CustomTextFormField(
                                                                width: 249,
                                                                focusNode:
                                                                    FocusNode(),
                                                                controller:
                                                                    controller
                                                                        .vinputslotController,
                                                                hintText:
                                                                    "msg_tanggal_pengaju"
                                                                        .tr,
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            21,
                                                                        top: 9,
                                                                        right:
                                                                            21),
                                                                alignment:
                                                                    Alignment
                                                                        .center),
                                                            CustomTextFormField(
                                                                width: 249,
                                                                focusNode:
                                                                    FocusNode(),
                                                                controller:
                                                                    controller
                                                                        .vinputslotOneController,
                                                                hintText:
                                                                    "msg_tanggal_persetu"
                                                                        .tr,
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            21,
                                                                        top: 19,
                                                                        right:
                                                                            21),
                                                                alignment:
                                                                    Alignment
                                                                        .center),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            21,
                                                                        top: 48,
                                                                        right:
                                                                            21),
                                                                child: Text(
                                                                    "lbl_produksi"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular16
                                                                        .copyWith(
                                                                            letterSpacing:
                                                                                0.15,
                                                                            height:
                                                                                1.00))),
                                                            CustomTextFormField(
                                                                width: 249,
                                                                focusNode:
                                                                    FocusNode(),
                                                                controller:
                                                                    controller
                                                                        .vinputslotTwoController,
                                                                hintText:
                                                                    "lbl_kuota_produksi"
                                                                        .tr,
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            21,
                                                                        top: 2,
                                                                        right:
                                                                            21),
                                                                alignment:
                                                                    Alignment
                                                                        .center),
                                                            CustomTextFormField(
                                                                width: 249,
                                                                focusNode:
                                                                    FocusNode(),
                                                                controller:
                                                                    controller
                                                                        .vinputslotThreeController,
                                                                hintText:
                                                                    "lbl_kuota_realisasi"
                                                                        .tr,
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            21,
                                                                        top: 13,
                                                                        right:
                                                                            21),
                                                                alignment:
                                                                    Alignment
                                                                        .center),
                                                            CustomTextFormField(
                                                                width: 249,
                                                                focusNode:
                                                                    FocusNode(),
                                                                controller:
                                                                    controller
                                                                        .vinputslotFourController,
                                                                hintText:
                                                                    "lbl_nilai_kalori"
                                                                        .tr,
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            21,
                                                                        top: 13,
                                                                        right:
                                                                            21),
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
                                                                            21,
                                                                        top: 25,
                                                                        right:
                                                                            21),
                                                                    child: Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment
                                                                                .spaceBetween,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .start,
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Padding(
                                                                              padding: getPadding(top: 4, bottom: 3),
                                                                              child: Text("lbl_blending".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular16.copyWith(letterSpacing: 0.15, height: 1.00))),
                                                                          Obx(() => CustomSwitch(
                                                                              value: controller.isSelectedSwitch.value,
                                                                              onChanged: (value) {
                                                                                controller.isSelectedSwitch.value = value;
                                                                              }))
                                                                        ]))),
                                                            Container(
                                                                width: double
                                                                    .infinity,
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            21,
                                                                        top: 39,
                                                                        right:
                                                                            21),
                                                                decoration: BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(getHorizontalSize(
                                                                            4.00))),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .end,
                                                                    children: [
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  3,
                                                                              right:
                                                                                  10),
                                                                          child: Text(
                                                                              "lbl_dmo".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRobotoRegular16.copyWith(letterSpacing: 0.15, height: 1.00))),
                                                                      Container(
                                                                          width: double
                                                                              .infinity,
                                                                          margin: getMargin(
                                                                              top:
                                                                                  5),
                                                                          decoration: AppDecoration.outlineBlack9001e.copyWith(
                                                                              borderRadius: BorderRadiusStyle
                                                                                  .roundedBorder4),
                                                                          child: Column(
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                              mainAxisAlignment: MainAxisAlignment.end,
                                                                              children: [
                                                                                Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(all: 12), child: Text("lbl_kuota_dmo".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular16.copyWith(letterSpacing: 0.50, height: 1.50))))
                                                                              ])),
                                                                      CustomTextFormField(
                                                                          width:
                                                                              255,
                                                                          focusNode:
                                                                              FocusNode(),
                                                                          controller: controller
                                                                              .vinputslotFiveController,
                                                                          hintText: "lbl_kuota_realisasi"
                                                                              .tr,
                                                                          margin: getMargin(
                                                                              top:
                                                                                  13),
                                                                          padding: TextFormFieldPadding
                                                                              .PaddingAll12,
                                                                          textInputAction:
                                                                              TextInputAction.done)
                                                                    ])),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            25,
                                                                        top:
                                                                            151,
                                                                        right:
                                                                            25),
                                                                child: Text(
                                                                    "lbl_pelabuhan"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular16
                                                                        .copyWith(
                                                                            letterSpacing:
                                                                                0.15,
                                                                            height:
                                                                                1.50))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            21,
                                                                        top: 4,
                                                                        right:
                                                                            21),
                                                                    child: Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment
                                                                                .spaceBetween,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .center,
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Text(
                                                                              "lbl_milik_sendiri".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRobotoRegular16.copyWith(letterSpacing: 0.15, height: 1.50)),
                                                                          Obx(() => CustomSwitch(
                                                                              value: controller.isSelectedSwitch1.value,
                                                                              onChanged: (value) {
                                                                                controller.isSelectedSwitch1.value = value;
                                                                              }))
                                                                        ]))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            25,
                                                                        top: 27,
                                                                        right:
                                                                            25),
                                                                child: Text(
                                                                    "lbl_scan_analyzer"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular16
                                                                        .copyWith(
                                                                            letterSpacing:
                                                                                0.15,
                                                                            height:
                                                                                1.50))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            21,
                                                                        top: 4,
                                                                        right:
                                                                            21),
                                                                    child: Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment
                                                                                .spaceBetween,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .center,
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Text(
                                                                              "lbl_ada".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRobotoRegular16.copyWith(letterSpacing: 0.15, height: 1.50)),
                                                                          Obx(() => CustomSwitch(
                                                                              value: controller.isSelectedSwitch2.value,
                                                                              onChanged: (value) {
                                                                                controller.isSelectedSwitch2.value = value;
                                                                              }))
                                                                        ]))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            21,
                                                                        top: 24,
                                                                        right:
                                                                            21),
                                                                    child: Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment
                                                                                .spaceBetween,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .center,
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Text(
                                                                              "lbl_titik_produksi".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRobotoRegular16.copyWith(letterSpacing: 0.15, height: 1.50)),
                                                                          Obx(() => CustomSwitch(
                                                                              value: controller.isSelectedSwitch3.value,
                                                                              onChanged: (value) {
                                                                                controller.isSelectedSwitch3.value = value;
                                                                              }))
                                                                        ]))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            21,
                                                                        top: 24,
                                                                        right:
                                                                            21),
                                                                    child: Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment
                                                                                .spaceBetween,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .center,
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Text(
                                                                              "lbl_pelabuhan2".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRobotoRegular16.copyWith(letterSpacing: 0.15, height: 1.50)),
                                                                          Obx(() => CustomSwitch(
                                                                              value: controller.isSelectedSwitch4.value,
                                                                              onChanged: (value) {
                                                                                controller.isSelectedSwitch4.value = value;
                                                                              }))
                                                                        ]))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Container(
                                                                    margin: getMargin(
                                                                        left:
                                                                            21,
                                                                        top: 29,
                                                                        right:
                                                                            21),
                                                                    padding: getPadding(
                                                                        left:
                                                                            12,
                                                                        top: 8,
                                                                        right:
                                                                            135),
                                                                    decoration:
                                                                        AppDecoration
                                                                            .txtOutlineBlack9001e,
                                                                    child: Text(
                                                                        "msg_deskripsi_detai"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle.txtRobotoRegular16.copyWith(
                                                                            letterSpacing:
                                                                                0.50,
                                                                            height:
                                                                                1.50)))),
                                                            CustomButton(
                                                                width: 265,
                                                                text: "lbl_upload"
                                                                    .tr
                                                                    .toUpperCase(),
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            21,
                                                                        top:
                                                                            552,
                                                                        right:
                                                                            21),
                                                                variant:
                                                                    ButtonVariant
                                                                        .OutlineBlack9003d,
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
                                                                            21,
                                                                        top: 18,
                                                                        right:
                                                                            21),
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
                                                                child:
                                                                    Container(
                                                                        width: getHorizontalSize(
                                                                            153.00),
                                                                        margin: getMargin(
                                                                            left:
                                                                                21,
                                                                            top:
                                                                                16,
                                                                            right:
                                                                                21),
                                                                        decoration:
                                                                            AppDecoration
                                                                                .fillGray900,
                                                                        child: Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                            mainAxisAlignment: MainAxisAlignment.end,
                                                                            children: [
                                                                              Padding(padding: getPadding(left: 48, top: 16, right: 48), child: Text("lbl_simpan".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoMedium14.copyWith(letterSpacing: 1.00, height: 1.14)))
                                                                            ]))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            21,
                                                                        top:
                                                                            732,
                                                                        right:
                                                                            21),
                                                                    child: Text(
                                                                        "lbl_kembali"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .center,
                                                                        style: AppStyle.txtRobotoMedium14DeeporangeA700.copyWith(
                                                                            letterSpacing:
                                                                                1.00,
                                                                            height:
                                                                                1.14))))
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
                                              left: 32, top: 3, bottom: 1),
                                          child: Text("msg_operasi_produks".tr,
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
