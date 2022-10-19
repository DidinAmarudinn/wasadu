import '../infra_list_audit_page/widgets/listlabel_one1_item_widget.dart';
import 'controller/infra_list_audit_controller.dart';
import 'models/infra_list_audit_model.dart';
import 'models/listlabel_one1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wasdu_mobile2/core/app_export.dart';
import 'package:wasdu_mobile2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class InfraListAuditPage extends StatelessWidget {
  InfraListAuditController controller =
      Get.put(InfraListAuditController(InfraListAuditModel().obs));

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
                  left: 9,
                ),
                variant: TextFormFieldVariant.UnderLineBlack9006b,
                padding: TextFormFieldPadding.PaddingB13,
                textInputAction: TextInputAction.done,
              ),
              Padding(
                padding: getPadding(
                  top: 11,
                  right: 11,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          12.00,
                        ),
                      ),
                      child: CommonImageView(
                        imagePath: ImageConstant.imgImage,
                        height: getSize(
                          96.00,
                        ),
                        width: getSize(
                          96.00,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 4,
                        bottom: 33,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "msg_pjuts_pj22000".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoMedium20.copyWith(
                              letterSpacing: 0.15,
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(
                              177.00,
                            ),
                            margin: getMargin(
                              top: 7,
                              right: 10,
                            ),
                            child: Text(
                              "msg_lat_6_234745".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRegular14.copyWith(
                                letterSpacing: 0.25,
                                height: 1.43,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 37,
                  right: 9,
                ),
                child: Obx(
                  () => ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller.infraListAuditModelObj.value
                        .listlabelOne1ItemList.length,
                    itemBuilder: (context, index) {
                      ListlabelOne1ItemModel model = controller
                          .infraListAuditModelObj
                          .value
                          .listlabelOne1ItemList[index];
                      return ListlabelOne1ItemWidget(
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
