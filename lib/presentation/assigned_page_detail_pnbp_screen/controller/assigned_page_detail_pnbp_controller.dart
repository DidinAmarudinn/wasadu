import 'dart:io';

import 'package:flutter/material.dart';

import '/core/app_export.dart';
import 'package:wasdu_mobile2/presentation/assigned_page_detail_pnbp_screen/models/assigned_page_detail_pnbp_model.dart';
import 'package:wasdu_mobile2/widgets/custom_bottom_bar.dart';

class AssignedPageDetailPnbpController extends GetxController {
  Rx<AssignedPageDetailPnbpModel> assignedPageDetailPnbpModelObj =
      AssignedPageDetailPnbpModel().obs;

  Rx<BottomBarEnum> type = BottomBarEnum.Assigned.obs;

  RxBool isBlending = false.obs;
  RxBool isPortOwnership = false.obs;
  RxBool isOwnScanAnalyzer = false.obs;

  List<String> ownershipStatuses = <String>['own', 'sharing'];
  List<File> files = [];

  RxString scan_analyzer_type = "own".obs;
  TextEditingController rkab_submission_date = TextEditingController();
  TextEditingController rkab_agreement_date = TextEditingController();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
