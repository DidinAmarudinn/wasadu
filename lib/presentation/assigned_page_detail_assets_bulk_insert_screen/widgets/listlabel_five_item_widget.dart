import '../controller/assigned_page_detail_assets_bulk_insert_controller.dart';
import '../models/listlabel_five_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wasdu_mobile2/core/app_export.dart';

// ignore: must_be_immutable
class ListlabelFiveItemWidget extends StatelessWidget {
  ListlabelFiveItemWidget(this.listlabelFiveItemModelObj);

  ListlabelFiveItemModel listlabelFiveItemModelObj;

  var controller = Get.find<AssignedPageDetailAssetsBulkInsertController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: getPadding(
          top: 12.9950255,
          right: 23,
          bottom: 12.9950255,
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
                Padding(
                  padding: getPadding(
                    right: 10,
                  ),
                  child: Text(
                    "lbl_ppk".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoRegular16.copyWith(
                      letterSpacing: 0.15,
                      height: 1.00,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 7,
                  ),
                  child: Text(
                    "lbl_irwanto".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoRegular14.copyWith(
                      letterSpacing: 0.25,
                      height: 1.00,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: getPadding(
                left: 133,
                top: 1,
                bottom: 1,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "lbl_tahun_anggaran".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoRegular16.copyWith(
                      letterSpacing: 0.15,
                      height: 1.00,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 6,
                      right: 10,
                    ),
                    child: Text(
                      "lbl_2020".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoRegular14.copyWith(
                        letterSpacing: 0.25,
                        height: 1.00,
                      ),
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
