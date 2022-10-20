import '/core/app_export.dart';
import 'package:wasdu_mobile2/presentation/individual_infra_detail_infra_list_page/models/individual_infra_detail_infra_list_model.dart';
import 'package:flutter/material.dart';

class IndividualInfraDetailInfraListController extends GetxController {
  IndividualInfraDetailInfraListController(
      this.individualInfraDetailInfraListModelObj);

  TextEditingController vinputslotController = TextEditingController();

  Rx<IndividualInfraDetailInfraListModel>
      individualInfraDetailInfraListModelObj;

  List<String> conditions = <String>[
    'A1 - Menyala Fisik Bagus',
    'A2 - Menyala Fisik Kurang Bagus',
    'A3 - Tidak Menyala Fisik Bagus',
    'A4 - Tidak Menyala Fisik Tidak Bagus',
    'A5 - Barang Tidak Ditemukan'
  ];

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
