import '/core/app_export.dart';
import 'package:wasdu_mobile2/presentation/infra_list_audit_tab_container_screen/models/infra_list_audit_tab_container_model.dart';
import 'package:wasdu_mobile2/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class InfraListAuditTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<InfraListAuditTabContainerModel> infraListAuditTabContainerModelObj =
      InfraListAuditTabContainerModel().obs;

  late TabController vtabitemsController =
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
