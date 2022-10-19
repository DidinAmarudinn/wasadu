import '../controller/assigned_page_detail_pnbp_controller.dart';
import 'package:get/get.dart';

class AssignedPageDetailPnbpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AssignedPageDetailPnbpController());
  }
}
