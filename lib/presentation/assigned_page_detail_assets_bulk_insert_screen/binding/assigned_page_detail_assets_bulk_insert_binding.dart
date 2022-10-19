import '../controller/assigned_page_detail_assets_bulk_insert_controller.dart';
import 'package:get/get.dart';

class AssignedPageDetailAssetsBulkInsertBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AssignedPageDetailAssetsBulkInsertController());
  }
}
