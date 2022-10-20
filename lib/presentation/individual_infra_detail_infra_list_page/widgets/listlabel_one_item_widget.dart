import 'package:wasdu_mobile2/presentation/individual_infra_detail_infra_list_page/widgets/individual_infra_detail_input_opinion_page.dart';

import '../controller/individual_infra_detail_infra_list_controller.dart';
import '../models/listlabel_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wasdu_mobile2/core/app_export.dart';

// ignore: must_be_immutable
class ListlabelOneItemWidget extends StatelessWidget {
  ListlabelOneItemWidget(this.listlabelOneItemModelObj);

  ListlabelOneItemModel listlabelOneItemModelObj;

  var controller = Get.find<IndividualInfraDetailInfraListController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialogFunc(context, listlabelOneItemModelObj);
      },
      child: Padding(
        padding: getPadding(
          bottom: 18.5,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
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
                left: 16,
                top: 4,
                bottom: 3,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "msg_pjuts_pj220002".tr,
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
                  Container(
                    margin: getMargin(
                      top: 10,
                      right: 10,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          10.00,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          decoration: AppDecoration.fillGreen500.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder12,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: getPadding(
                                  left: 12,
                                  top: 4,
                                  right: 12,
                                  bottom: 5,
                                ),
                                child: Text(
                                  "lbl_audited".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtRobotoRegular10.copyWith(
                                    height: 1.00,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            left: 12,
                          ),
                          decoration: AppDecoration.fillBlue700.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder12,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: getPadding(
                                    left: 12,
                                    top: 4,
                                    right: 12,
                                    bottom: 5,
                                  ),
                                  child: Text(
                                    "lbl_a1".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: AppStyle.txtRobotoRegular10.copyWith(
                                      height: 1.00,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  showDialogFunc(context, listlabelOneItemModelObj) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return IndividualInfraDetailInputOpinion(listlabelOneItemModelObj);
        });
  }
}
