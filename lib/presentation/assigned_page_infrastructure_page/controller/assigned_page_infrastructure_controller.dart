import '/core/app_export.dart';
import 'package:wasdu_mobile2/presentation/assigned_page_infrastructure_page/models/assigned_page_infrastructure_model.dart';
import 'package:flutter/material.dart';

class AssignedPageInfrastructureController extends GetxController {
  AssignedPageInfrastructureController(this.assignedPageInfrastructureModelObj);

  TextEditingController vinputslotController = TextEditingController();

  Rx<AssignedPageInfrastructureModel> assignedPageInfrastructureModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    vinputslotController.dispose();
  }
}
