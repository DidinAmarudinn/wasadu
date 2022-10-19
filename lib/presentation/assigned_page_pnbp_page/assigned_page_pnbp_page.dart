import '../assigned_page_pnbp_page/widgets/listlabel_item_widget.dart';
import 'controller/assigned_page_pnbp_controller.dart';
import 'models/assigned_page_pnbp_model.dart';
import 'models/listlabel_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wasdu_mobile2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AssignedPagePnbpPage extends StatelessWidget {
  AssignedPagePnbpController controller =
      Get.put(AssignedPagePnbpController(AssignedPagePnbpModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                  padding: getPadding(left: 4),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                            padding: getPadding(
                                left: 16, top: 10, right: 16, bottom: 7),
                            decoration: AppDecoration.txtFillBlack9000a
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.txtCircleBorder16),
                            child: Text("lbl_bandung".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoRegular14Black900dd
                                    .copyWith(
                                        letterSpacing: 0.25, height: 1.00))),
                        Container(
                            padding: getPadding(
                                left: 16, top: 10, right: 16, bottom: 7),
                            decoration: AppDecoration.txtFillBlack9000a
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.txtCircleBorder16),
                            child: Text("lbl_surabaya".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoRegular14Black900dd
                                    .copyWith(
                                        letterSpacing: 0.25, height: 1.00))),
                        Container(
                            padding: getPadding(
                                left: 16, top: 10, right: 16, bottom: 7),
                            decoration: AppDecoration.txtFillBlack9000a
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.txtCircleBorder16),
                            child: Text("lbl_semarang".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoRegular14Black900dd
                                    .copyWith(
                                        letterSpacing: 0.25, height: 1.00))),
                        Container(
                            padding: getPadding(left: 16, top: 8, bottom: 9),
                            decoration: AppDecoration.txtFillBlack9000a
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.txtCircleBorder16),
                            child: Text("lbl_jakarta".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: AppStyle.txtRobotoRegular14Black900dd
                                    .copyWith(
                                        letterSpacing: 0.25, height: 1.00)))
                      ])),
              Padding(
                padding: getPadding(top: 16, right: 6),
                child: Obx(
                  () => ListView.builder(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller.assignedPagePnbpModelObj.value
                        .listlabelItemList.length,
                    itemBuilder: (context, index) {
                      ListlabelItemModel model = controller
                          .assignedPagePnbpModelObj
                          .value
                          .listlabelItemList[index];
                      return ListlabelItemWidget(model,
                          onTapRowlabel: onTapRowlabel);
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  onTapRowlabel() {
    Get.toNamed(AppRoutes.assignedPageDetailPnbpScreen);
  }
}
