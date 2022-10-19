import '../controller/assigned_page_pnbp_tab_container_controller.dart';
import 'package:get/get.dart';

class AssignedPagePnbpTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AssignedPagePnbpTabContainerController());
  }
}
