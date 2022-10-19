import '/core/app_export.dart';
import 'package:wasdu_mobile2/presentation/infra_list_audit_page/models/infra_list_audit_model.dart';
import 'package:flutter/material.dart';

class InfraListAuditController extends GetxController {
  InfraListAuditController(this.infraListAuditModelObj);

  TextEditingController vinputslotController = TextEditingController();

  Rx<InfraListAuditModel> infraListAuditModelObj;

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
