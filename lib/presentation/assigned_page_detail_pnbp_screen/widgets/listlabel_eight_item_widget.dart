import '../controller/assigned_page_detail_pnbp_controller.dart';
import '../models/listlabel_eight_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wasdu_mobile2/core/app_export.dart';

// ignore: must_be_immutable
class ListlabelEightItemWidget extends StatelessWidget {
  ListlabelEightItemWidget(this.listlabelEightItemModelObj);

  ListlabelEightItemModel listlabelEightItemModelObj;

  var controller = Get.find<AssignedPageDetailPnbpController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: getPadding(
          top: 10.0,
          right: 101,
          bottom: 10.0,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "lbl_luas_sk".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoRegular16.copyWith(
                    letterSpacing: 0.15,
                    height: 1.50,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    right: 10,
                  ),
                  child: Text(
                    "lbl_700".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoRegular14.copyWith(
                      letterSpacing: 0.25,
                      height: 1.43,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: getPadding(
                left: 123,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      right: 8,
                    ),
                    child: Text(
                      "lbl_cnc".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoRegular16.copyWith(
                        letterSpacing: 0.15,
                        height: 1.50,
                      ),
                    ),
                  ),
                  Text(
                    "lbl_cnc_3".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoRegular14.copyWith(
                      letterSpacing: 0.25,
                      height: 1.43,
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
}
