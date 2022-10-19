import '/core/app_export.dart';
import 'package:wasdu_mobile2/presentation/detail_view_pnbp_input_opini_screen/models/detail_view_pnbp_input_opini_model.dart';
import 'package:wasdu_mobile2/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class DetailViewPnbpInputOpiniController extends GetxController {
  TextEditingController vinputslotController = TextEditingController();

  TextEditingController vinputslotOneController = TextEditingController();

  TextEditingController vinputslotTwoController = TextEditingController();

  TextEditingController vinputslotThreeController = TextEditingController();

  TextEditingController vinputslotFourController = TextEditingController();

  TextEditingController vinputslotFiveController = TextEditingController();

  Rx<DetailViewPnbpInputOpiniModel> detailViewPnbpInputOpiniModelObj =
      DetailViewPnbpInputOpiniModel().obs;

  RxBool isSelectedSwitch = false.obs;

  RxBool isSelectedSwitch1 = false.obs;

  RxBool isSelectedSwitch2 = false.obs;

  RxBool isSelectedSwitch3 = false.obs;

  RxBool isSelectedSwitch4 = false.obs;

  Rx<BottomBarEnum> type = BottomBarEnum.Assigned.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    vinputslotController.dispose();
    vinputslotOneController.dispose();
    vinputslotTwoController.dispose();
    vinputslotThreeController.dispose();
    vinputslotFourController.dispose();
    vinputslotFiveController.dispose();
  }
}
