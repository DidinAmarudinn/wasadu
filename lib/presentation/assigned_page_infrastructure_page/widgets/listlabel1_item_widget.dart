import 'package:wasdu_mobile2/presentation/assigned_page_infrastructure_page/models/infra_model.dart';
import 'package:wasdu_mobile2/presentation/bulk_infra_detail_screen/bulk_infra_detail_screen.dart';
import 'package:wasdu_mobile2/presentation/individual_infra_tab_container_screen/individual_infra_tab_container_screen.dart';

import '../controller/assigned_page_infrastructure_controller.dart';
import 'package:flutter/material.dart';
import 'package:wasdu_mobile2/core/app_export.dart';

// ignore: must_be_immutable
class Listlabel1ItemWidget extends StatelessWidget {
  final InfraData? infraData;

  Listlabel1ItemWidget(this.infraData);

  var controller = Get.find<AssignedPageInfrastructureController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapRowLabel(infraData?.auditType ?? '', context);
      },
      child: Padding(
        padding: getPadding(
          bottom: 15.43,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: getPadding(
                bottom: 6,
              ),
              child: ClipRRect(
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
            ),
            Padding(
              padding: getPadding(
                left: 16,
                top: 4,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    infraData?.manualCode ?? "",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoMedium20.copyWith(
                      letterSpacing: 0.15,
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      142.00,
                    ),
                    margin: getMargin(
                      top: 6,
                      right: 10,
                    ),
                    child: Text(
                      "${infraData?.location?.name} ${infraData?.location?.parentLocation?.name}",
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
    );
  }

  onTapRowLabel(String? auditType, BuildContext context) {
    if (auditType == 'bulk') {
      // Get.toNamed(AppRoutes.bulkInfraDetailScreen);
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => BulkInfraDetailScreen(),
        ),
      );
    } else if (auditType == 'individual') {
     /* Get.toNamed(
        AppRoutes.individualInfraTabContainerScreen,
        arguments: IndividualInfraTabContainerScreen(infraData),
      );*/
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => IndividualInfraTabContainerScreen(infraData),
        ),
      );
    }
  }
}
