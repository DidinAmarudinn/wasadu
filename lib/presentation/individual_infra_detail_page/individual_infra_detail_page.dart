import '../individual_infra_detail_page/widgets/listlabel2_item_widget.dart';
import 'controller/individual_infra_detail_controller.dart';
import 'models/individual_infra_detail_model.dart';
import 'models/listlabel2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wasdu_mobile2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class IndividualInfraDetailPage extends StatelessWidget {
  IndividualInfraDetailController controller = Get.put(
      IndividualInfraDetailController(IndividualInfraDetailModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                      padding: getPadding(left: 20, right: 20),
                      child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(getHorizontalSize(12.00)),
                          child: CommonImageView(
                              imagePath: ImageConstant.imgImage,
                              height: getSize(129.00),
                              width: getSize(129.00),
                              fit: BoxFit.cover)))),
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                      padding: getPadding(top: 19),
                      child: Text("PJUTS : 19019324123".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoMedium20
                              .copyWith(letterSpacing: 0.15)))),
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                      padding: getPadding(top: 5, bottom: 10),
                      child: Text("PJ220000001".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRegular14
                              .copyWith(letterSpacing: 0.25, height: 1.00)))),
              Obx(
                () => ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: controller.individualInfraDetailModelObj.value
                      .listlabel2ItemList.length,
                  itemBuilder: (context, index) {
                    Listlabel2ItemModel model = controller
                        .individualInfraDetailModelObj
                        .value
                        .listlabel2ItemList[index];
                    return Listlabel2ItemWidget(
                      model,
                    );
                  },
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 1,
                  top: 25,
                  right: 10,
                ),
                child: Text(
                  "lbl_nama_paket".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoRegular16.copyWith(
                    letterSpacing: 0.15,
                    height: 1.00,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: getMargin(
                    left: 0,
                    top: 9,
                    right: 9,
                  ),
                  child: Text(
                    "msg_pemasangan_pene".tr,
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoRegular14.copyWith(
                      letterSpacing: 0.25,
                      height: 1.43,
                    ),
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
