import '/core/app_export.dart';
import 'package:wasdu_mobile2/presentation/bulk_infra_detail_screen/models/bulk_infra_detail_model.dart';
import 'package:wasdu_mobile2/widgets/custom_bottom_bar.dart';

class BulkInfraDetailController extends GetxController {
  Rx<BulkInfraDetailModel> bulkInfraDetailModelObj = BulkInfraDetailModel().obs;

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
