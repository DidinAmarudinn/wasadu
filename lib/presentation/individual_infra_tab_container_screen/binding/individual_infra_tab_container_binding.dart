import '../controller/individual_infra_tab_container_controller.dart';
import 'package:get/get.dart';

class IndividualInfraTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IndividualInfraTabContainerController());
  }
}
