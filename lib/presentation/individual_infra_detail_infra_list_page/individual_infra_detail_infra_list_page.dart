import '../individual_infra_detail_infra_list_page/widgets/listlabel_one_item_widget.dart';
import 'controller/individual_infra_detail_infra_list_controller.dart';
import 'models/individual_infra_detail_infra_list_model.dart';
import 'models/listlabel_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wasdu_mobile2/core/app_export.dart';
import 'package:wasdu_mobile2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class IndividualInfraDetailInfraListPage extends StatelessWidget {
  IndividualInfraDetailInfraListController controller = Get.put(
      IndividualInfraDetailInfraListController(
          IndividualInfraDetailInfraListModel().obs));

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
              CustomTextFormField(
                width: 332,
                focusNode: FocusNode(),
                controller: controller.vinputslotController,
                hintText: "lbl_search".tr,
                margin: getMargin(
                  top: 10,
                  left: 0,
                ),
                variant: TextFormFieldVariant.UnderLineBlack9006b,
                padding: TextFormFieldPadding.PaddingB13,
                textInputAction: TextInputAction.done,
              ),
              Padding(
                padding: getPadding(
                  top: 10,
                  right: 9,
                ),
                child: Obx(
                  () => ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller.individualInfraDetailInfraListModelObj
                        .value.listlabelOneItemList.length,
                    itemBuilder: (context, index) {
                      ListlabelOneItemModel model = controller
                          .individualInfraDetailInfraListModelObj
                          .value
                          .listlabelOneItemList[index];
                      return ListlabelOneItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
