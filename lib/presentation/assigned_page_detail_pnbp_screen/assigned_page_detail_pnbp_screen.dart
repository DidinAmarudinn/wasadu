import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:intl/intl.dart';
import 'package:wasdu_mobile2/widgets/custom_switch.dart';
import 'package:wasdu_mobile2/widgets/custom_text_form_field.dart';

import '../assigned_page_detail_pnbp_screen/widgets/listlabel_eight_item_widget.dart';
import 'controller/assigned_page_detail_pnbp_controller.dart';
import 'models/listlabel_eight_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wasdu_mobile2/core/app_export.dart';
import 'package:wasdu_mobile2/widgets/custom_bottom_bar.dart';
import 'package:wasdu_mobile2/widgets/custom_button.dart';

class AssignedPageDetailPnbpScreen
    extends GetWidget<AssignedPageDetailPnbpController> {
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
                              ]))),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: getPadding(left: 3, top: 31),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding:
                                                getPadding(left: 18, right: 18),
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
                                                left: 18, top: 20, right: 18),
                                            child: Text(
                                                "msg_operasi_produks2".tr,
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
                                                left: 18, top: 46, right: 18),
                                            child: Text("lbl_pejabat".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRegular16
                                                    .copyWith(
                                                        letterSpacing: 0.15,
                                                        height: 1.00)))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 18, top: 6, right: 18),
                                            child: Text("lbl_gubernur".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRegular14
                                                    .copyWith(
                                                        letterSpacing: 0.25,
                                                        height: 1.00)))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 21, top: 16, right: 21),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(bottom: 1),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                                "lbl_nama_provinsi"
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
                                                                            1.00)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 7,
                                                                        right:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_jambi"
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
                                                                                1.00)))
                                                          ])),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 76, top: 1),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                                "lbl_nama_kabupaten"
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
                                                                            1.00)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 6,
                                                                        right:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_kab_sarol"
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
                                                                                1.00)))
                                                          ]))
                                                ]))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 21, top: 26, right: 21),
                                            child: Text(
                                                "lbl_nama_perusahaan".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRegular16
                                                    .copyWith(
                                                        letterSpacing: 0.15,
                                                        height: 1.00)))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 21, top: 7, right: 21),
                                            child: Text("lbl_pt_bangun_pers".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRegular14
                                                    .copyWith(
                                                        letterSpacing: 0.25,
                                                        height: 1.00)))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 21, top: 26, right: 21),
                                            child: Text("lbl_sk_iup".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRegular16
                                                    .copyWith(
                                                        letterSpacing: 0.15,
                                                        height: 1.00)))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 21, top: 8, right: 21),
                                            child: Text(
                                                "msg_78_kep_ka_dpm_p".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRegular14
                                                    .copyWith(
                                                        letterSpacing: 0.25,
                                                        height: 1.00)))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 21, top: 27, right: 21),
                                            child: Text(
                                                "lbl_tanggal_berlaku".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRegular16
                                                    .copyWith(
                                                        letterSpacing: 0.15,
                                                        height: 1.00)))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 21, top: 6, right: 21),
                                            child: Text("lbl_43560_47857".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRegular14
                                                    .copyWith(
                                                        letterSpacing: 0.25,
                                                        height: 1.00)))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 21, top: 27, right: 21),
                                            child: Text(
                                                "lbl_tanggal_berlaku".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRegular16
                                                    .copyWith(
                                                        letterSpacing: 0.15,
                                                        height: 1.00)))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 21, top: 2, right: 21),
                                            child: Text("lbl_43560_47857".tr,
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
                                                left: 18, top: 26, right: 18),
                                            child: Obx(() => ListView.builder(
                                                physics:
                                                    NeverScrollableScrollPhysics(),
                                                shrinkWrap: true,
                                                itemCount: controller
                                                    .assignedPageDetailPnbpModelObj
                                                    .value
                                                    .listlabelEightItemList
                                                    .length,
                                                itemBuilder: (context, index) {
                                                  ListlabelEightItemModel
                                                      model = controller
                                                          .assignedPageDetailPnbpModelObj
                                                          .value
                                                          .listlabelEightItemList[index];
                                                  return ListlabelEightItemWidget(
                                                      model);
                                                })))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: GestureDetector(
                                            onTap: () {
                                              showDialogFunc(context);
                                            },
                                            child: Container(
                                                width: double.infinity,
                                                margin: getMargin(top: 25),
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
                                                      CustomButton(
                                                          width: 320,
                                                          text:
                                                              "lbl_input_opini"
                                                                  .tr,
                                                          margin: getMargin(
                                                              left: 26,
                                                              top: 16,
                                                              right: 26,
                                                              bottom: 16),
                                                          variant: ButtonVariant
                                                              .OutlineBlueA701,
                                                          shape: ButtonShape
                                                              .CircleBorder27,
                                                          padding: ButtonPadding
                                                              .PaddingAll15,
                                                          fontStyle:
                                                              ButtonFontStyle
                                                                  .RobotoMedium16,
                                                          prefixWidget: Container(
                                                              margin: getMargin(
                                                                  right: 8),
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgPlus)))
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
    Get.toNamed(AppRoutes.detailViewPnbpInputOpiniScreen);
  }

  showDialogFunc(context) {
    return showDialog(
        context: context,
        // barrierDismissible: false,
        builder: (context) {
          return Center(
            child: Material(
              type: MaterialType.transparency,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                padding: EdgeInsets.all(19),
                width: MediaQuery.of(context).size.width * 0.88,
                height: 700,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        'Masukan Kondisi PNBP',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 19,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          child: Text(
                            'RKAB',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Wrap(
                        spacing: 20,
                        runSpacing: 10,
                        children: [
                          CustomTextFormField(
                            width: 200,
                            readOnly: true,
                            controller: controller.rkab_submission_date,
                            focusNode: FocusNode(),
                            hintText: "Tanggal Pengajuan".tr,
                            margin: getMargin(
                              left: 0,
                              top: 0,
                              right: 0,
                            ),
                            variant: TextFormFieldVariant.OutlineBlack9006b,
                            padding: TextFormFieldPadding.PaddingAll12,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                minimumSize: const Size(70, 48),
                                maximumSize: const Size(70, 48)),
                            onPressed: () {
                              showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2000),
                                lastDate: DateTime(DateTime.now().year + 1),
                              ).then(
                                (date) {
                                  controller.rkab_submission_date.text =
                                      DateFormat('yyyy-MM-dd').format(date!);
                                  (context as Element).markNeedsBuild();
                                },
                              );
                            },
                            child: const Icon(
                              Icons.date_range,
                              color: Colors.white,
                              size: 24.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Wrap(
                        spacing: 20,
                        runSpacing: 10,
                        children: [
                          CustomTextFormField(
                            width: 200,
                            readOnly: true,
                            controller: controller.rkab_agreement_date,
                            focusNode: FocusNode(),
                            hintText: "Tanggal Persetujuan".tr,
                            margin: getMargin(
                              left: 0,
                              top: 0,
                              right: 0,
                            ),
                            variant: TextFormFieldVariant.OutlineBlack9006b,
                            padding: TextFormFieldPadding.PaddingAll12,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                minimumSize: const Size(70, 48),
                                maximumSize: const Size(70, 48)),
                            onPressed: () {
                              showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2000),
                                lastDate: DateTime(DateTime.now().year + 1),
                              ).then(
                                (date) {
                                  controller.rkab_agreement_date.text =
                                      DateFormat('yyyy-MM-dd').format(date!);
                                  (context as Element).markNeedsBuild();
                                },
                              );
                            },
                            child: const Icon(
                              Icons.date_range,
                              color: Colors.white,
                              size: 24.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          child: Text(
                            'PRODUKSI',
                          ),
                        ),
                      ),
                      CustomTextFormField(
                        width: 315,
                        focusNode: FocusNode(),
                        hintText: "Kuota Produksi".tr,
                        margin: getMargin(
                          left: 0,
                          top: 5,
                          right: 0,
                        ),
                        variant: TextFormFieldVariant.OutlineBlack9006b,
                        padding: TextFormFieldPadding.PaddingAll12,
                      ),
                      CustomTextFormField(
                        width: 315,
                        focusNode: FocusNode(),
                        hintText: "Kuota Realisasi".tr,
                        margin: getMargin(
                          left: 0,
                          top: 19,
                          right: 0,
                        ),
                        variant: TextFormFieldVariant.OutlineBlack9006b,
                        padding: TextFormFieldPadding.PaddingAll12,
                      ),
                      CustomTextFormField(
                        width: 315,
                        focusNode: FocusNode(),
                        hintText: "Nilai Kalori".tr,
                        margin: getMargin(
                          left: 0,
                          top: 19,
                          right: 0,
                        ),
                        variant: TextFormFieldVariant.OutlineBlack9006b,
                        padding: TextFormFieldPadding.PaddingAll12,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: getPadding(left: 21, top: 25, right: 21),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                  padding: getPadding(top: 4, bottom: 3),
                                  child: Text("lbl_blending".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoRegular16
                                          .copyWith(
                                              letterSpacing: 0.15,
                                              height: 1.00))),
                              Obx(
                                () => CustomSwitch(
                                  value: controller.isBlending.value,
                                  onChanged: (bool value) {
                                    controller.isBlending.value = value;
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          child: Text(
                            'DMO',
                          ),
                        ),
                      ),
                      CustomTextFormField(
                        width: 315,
                        focusNode: FocusNode(),
                        hintText: "Kuota DMO".tr,
                        margin: getMargin(
                          left: 0,
                          top: 5,
                          right: 0,
                        ),
                        variant: TextFormFieldVariant.OutlineBlack9006b,
                        padding: TextFormFieldPadding.PaddingAll12,
                      ),
                      CustomTextFormField(
                        width: 315,
                        focusNode: FocusNode(),
                        hintText: "Kuota Realisasi".tr,
                        margin: getMargin(
                          left: 0,
                          top: 19,
                          right: 0,
                        ),
                        variant: TextFormFieldVariant.OutlineBlack9006b,
                        padding: TextFormFieldPadding.PaddingAll12,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          child: Text(
                            'PELABUHAN',
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: getPadding(left: 21, top: 4, right: 21),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text("lbl_milik_sendiri".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoRegular16.copyWith(
                                      letterSpacing: 0.15, height: 1.50)),
                              Obx(
                                () => CustomSwitch(
                                  value: controller.isPortOwnership.value,
                                  onChanged: (value) {
                                    controller.isPortOwnership.value = value;
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          child: Text(
                            'SCAN ANALYZER',
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: getPadding(left: 21, top: 4, right: 21),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text("lbl_ada".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoRegular16.copyWith(
                                      letterSpacing: 0.15, height: 1.50)),
                              Obx(
                                () => CustomSwitch(
                                  value: controller.isOwnScanAnalyzer.value,
                                  onChanged: (value) {
                                    controller.isOwnScanAnalyzer.value = value;
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: getPadding(left: 21, top: 4, right: 21),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text("Kepemilikan".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoRegular16.copyWith(
                                      letterSpacing: 0.15, height: 1.50)),
                              DropdownButton(
                                value: controller.scan_analyzer_type.value,
                                items: controller.ownershipStatuses
                                    .map<DropdownMenuItem<String>>(
                                        (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (String? value) {
                                  controller.scan_analyzer_type.value = value!;
                                  (context as Element).markNeedsBuild();
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextField(
                        maxLines: 4,
                        decoration:
                            InputDecoration(hintText: 'Masukan Detail Audit'),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 36,
                        width: 265,
                        child: ElevatedButton(
                          onPressed: () {
                            selectFile(context);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff01A299),
                            minimumSize: const Size(122, 48),
                            maximumSize: const Size(122, 48),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          child: Text(
                            'UPLOAD',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffffffff)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Wrap(
                        spacing: 20,
                        runSpacing: 10,
                        children: [
                          const Text(
                            'Selected file:',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          GridView.builder(
                              shrinkWrap: true,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                              ),
                              itemCount: controller.files.length,
                              itemBuilder: (context, index) {
                                return Image.file(
                                  controller.files[index],
                                  width: 90,
                                  height: 90,
                                );
                              })
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 36,
                        width: 265,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff000000),
                            minimumSize: const Size(122, 48),
                            maximumSize: const Size(122, 48),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          child: Text(
                            'SIMPAN',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffffffff)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }

  selectFile(BuildContext context) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
        allowMultiple: true,
        type: FileType.custom,
        allowedExtensions: ['jpg', 'pdf', 'doc']);
    if (result != null) {
      controller.files = result.paths.map((path) => File(path!)).toList();
      (context as Element).markNeedsBuild();
      print(controller.files);
    } else {
      // User canceled the picker
    }
  }
}
