import '../controller/bulk_infra_detail_controller.dart';
import 'package:get/get.dart';

class BulkInfraDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BulkInfraDetailController());
  }
}
