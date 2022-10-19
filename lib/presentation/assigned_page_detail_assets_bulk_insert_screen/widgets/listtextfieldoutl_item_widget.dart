import '../controller/assigned_page_detail_assets_bulk_insert_controller.dart';
import '../models/listtextfieldoutl_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wasdu_mobile2/core/app_export.dart';

// ignore: must_be_immutable
class ListtextfieldoutlItemWidget extends StatelessWidget {
  ListtextfieldoutlItemWidget(this.listtextfieldoutlItemModelObj);

  ListtextfieldoutlItemModel listtextfieldoutlItemModelObj;

  var controller = Get.find<AssignedPageDetailAssetsBulkInsertController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        50.00,
      ),
      width: getHorizontalSize(
        247.00,
      ),
      margin: getMargin(
        top: 8.0,
        right: 3,
        bottom: 8.0,
      ),
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: getVerticalSize(
                45.00,
              ),
              width: getHorizontalSize(
                247.00,
              ),
              margin: getMargin(
                top: 10,
              ),
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CommonImageView(
                      svgPath: ImageConstant.imgTextfieldoutl,
                      height: getVerticalSize(
                        45.00,
                      ),
                      width: getHorizontalSize(
                        247.00,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 13,
                        top: 14,
                        right: 13,
                        bottom: 14,
                      ),
                      child: Text(
                        "lbl_100".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoRegular16.copyWith(
                          letterSpacing: 0.15,
                          height: 1.00,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: getPadding(
                left: 13,
                right: 13,
                bottom: 10,
              ),
              child: Text(
                "msg_a1_menyala_fisi".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRobotoRegular12Black90099.copyWith(
                  letterSpacing: 0.40,
                  height: 1.00,
                ),
              ),
            ),
          ),
          Container(
            height: getVerticalSize(
              1.00,
            ),
            width: getHorizontalSize(
              112.00,
            ),
            margin: getMargin(
              left: 11,
              top: 5,
              right: 11,
              bottom: 10,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.black9001e,
            ),
          ),
        ],
      ),
    );
  }
}
