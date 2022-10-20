import 'package:get/get.dart';
import 'package:wasdu_mobile2/presentation/bulk_infra_detail_screen/models/bulk_condition_model.dart';

class BulkInfraDetailModel {
  List<BulkCondition> bulkConditionList = [
    new BulkCondition(
        conditionId: 'A1',
        value: 0,
        code: 'A1',
        description: 'Menyala Fisik Bagus'),
    new BulkCondition(
        conditionId: 'A2',
        value: 0,
        code: 'A2',
        description: 'Menyala Fisik Tidak Bagus'),
    new BulkCondition(
        conditionId: 'A3',
        value: 0,
        code: 'A3',
        description: 'Tidak Menyala Fisik Bagus'),
    new BulkCondition(
        conditionId: 'A4',
        value: 0,
        code: 'A4',
        description: 'Tidak Menyala Fisik Tidak Bagus'),
    new BulkCondition(
        conditionId: 'A5',
        value: 0,
        code: 'A5',
        description: 'Barang Tidak Ditemukan'),
  ];

  List files = [];
  String description = "asd";
}
