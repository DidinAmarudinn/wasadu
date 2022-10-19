import '/core/app_export.dart';
import 'package:wasdu_mobile2/presentation/assigned_page_pnbp_tab_container_screen/models/assigned_page_pnbp_tab_container_model.dart';
import 'package:wasdu_mobile2/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class AssignedPagePnbpTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<AssignedPagePnbpTabContainerModel> assignedPagePnbpTabContainerModelObj =
      AssignedPagePnbpTabContainerModel().obs;

  late TabController tabBar2Controller =
      Get.put(TabController(vsync: this, length: 2));

  Rx<BottomBarEnum> type = BottomBarEnum.Assigned.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
