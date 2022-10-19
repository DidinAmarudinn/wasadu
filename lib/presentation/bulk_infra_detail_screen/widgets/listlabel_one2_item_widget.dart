import '../controller/bulk_infra_detail_controller.dart';
import '../models/listlabel_one2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wasdu_mobile2/core/app_export.dart';

// ignore: must_be_immutable
class ListlabelOne2ItemWidget extends StatelessWidget {
  ListlabelOne2ItemWidget(this.listlabelOne2ItemModelObj);

  ListlabelOne2ItemModel listlabelOne2ItemModelObj;

  var controller = Get.find<BulkInfraDetailController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: getPadding(
          top: 6.550003,
          bottom: 6.550003,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: getPadding(
                bottom: 3,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      right: 10,
                    ),
                    child: Text(
                      "lbl_pejabat".tr,
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
                      top: 6,
                    ),
                    child: Text(
                      "lbl_gubernur".tr,
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
            Padding(
              padding: getPadding(
                left: 113,
                top: 1,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      right: 10,
                    ),
                    child: Text(
                      "lbl_nama_kabupaten".tr,
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
                      "msg_kab_malan_jab".tr,
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
