import '/core/app_export.dart';
import 'package:wasdu_mobile2/presentation/assigned_page_detail_assets_bulk_insert_screen/models/assigned_page_detail_assets_bulk_insert_model.dart';
import 'package:wasdu_mobile2/widgets/custom_bottom_bar.dart';

class AssignedPageDetailAssetsBulkInsertController extends GetxController {
  Rx<AssignedPageDetailAssetsBulkInsertModel>
      assignedPageDetailAssetsBulkInsertModelObj =
      AssignedPageDetailAssetsBulkInsertModel().obs;

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
