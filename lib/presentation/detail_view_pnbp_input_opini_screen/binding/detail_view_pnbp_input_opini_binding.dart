import '../controller/detail_view_pnbp_input_opini_controller.dart';
import 'package:get/get.dart';

class DetailViewPnbpInputOpiniBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailViewPnbpInputOpiniController());
  }
}
