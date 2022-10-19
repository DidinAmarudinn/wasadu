import '../controller/navbottombar_controller.dart';
import 'package:get/get.dart';

class NavbottombarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NavbottombarController());
  }
}
