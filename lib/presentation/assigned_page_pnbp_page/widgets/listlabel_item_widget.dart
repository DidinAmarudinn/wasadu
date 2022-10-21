import 'package:wasdu_mobile2/presentation/assigned_page_pnbp_page/models/assigned_pnbp_model.dart';

import '../../assigned_page_detail_pnbp_screen/assigned_page_detail_pnbp_screen.dart';
import '../controller/assigned_page_pnbp_controller.dart';
import '../models/listlabel_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wasdu_mobile2/core/app_export.dart';

// ignore: must_be_immutable
class ListlabelItemWidget extends StatelessWidget {
  final AssignedPNBPData? pnbpModel;
  ListlabelItemWidget({this.pnbpModel});

  var controller = Get.find<AssignedPagePnbpController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => AssignedPageDetailPnbpScreen(pnbpModel)));
      },
      child: Padding(
        padding: getPadding(
          bottom: 8.0,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
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
                      75,
                    ),
                    width: getSize(
                      75,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 16,
                    top: 7,
                    bottom: 13,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        pnbpModel?.activityName ?? "",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoMedium20.copyWith(
                          letterSpacing: 0.15,
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: getHorizontalSize(
                            153.00,
                          ),
                          margin: getMargin(
                            top: 4,
                            right: 2,
                          ),
                          child: Text(
                            "${pnbpModel?.commodity} ${pnbpModel?.skIup}",
                            maxLines: 4,
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,
                            style: AppStyle.txtRobotoRegular14.copyWith(
                              letterSpacing: 0.15,
                              height: 1,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: getPadding(
                left: 50,
                top: 8,
                bottom: 64,
              ),
              child: CommonImageView(
                svgPath: ImageConstant.imgOverflowmenu,
                height: getSize(
                  24.00,
                ),
                width: getSize(
                  24.00,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
