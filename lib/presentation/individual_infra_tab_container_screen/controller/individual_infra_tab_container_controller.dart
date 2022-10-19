import '/core/app_export.dart';
import 'package:wasdu_mobile2/presentation/individual_infra_tab_container_screen/models/individual_infra_tab_container_model.dart';
import 'package:wasdu_mobile2/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class IndividualInfraTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<IndividualInfraTabContainerModel> individualInfraTabContainerObj =
      IndividualInfraTabContainerModel().obs;

  late TabController infraTabBar2Controller =
      Get.put(new TabController(vsync: this, length: 2));

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
