import '../controller/infra_list_audit_tab_container_controller.dart';
import 'package:get/get.dart';

class InfraListAuditTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InfraListAuditTabContainerController());
  }
}
