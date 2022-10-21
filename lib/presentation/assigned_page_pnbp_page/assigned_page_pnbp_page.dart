import 'package:provider/provider.dart';
import 'package:wasdu_mobile2/presentation/assigned_page_pnbp_page/controller/assigned_provider.dart';
import 'package:wasdu_mobile2/services/PnbpService.dart';

import '../../core/constants/request_state.dart';
import '../assigned_page_detail_pnbp_screen/assigned_page_detail_pnbp_screen.dart';
import '../assigned_page_pnbp_page/widgets/listlabel_item_widget.dart';
import 'controller/assigned_page_pnbp_controller.dart';
import 'models/assigned_page_pnbp_model.dart';
import 'models/assigned_pnbp_model.dart';
import 'models/listlabel_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wasdu_mobile2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AssignedPagePnbpPage extends StatefulWidget {
  @override
  State<AssignedPagePnbpPage> createState() => _AssignedPagePnbpPageState();
}

class _AssignedPagePnbpPageState extends State<AssignedPagePnbpPage> {
  AssignedPagePnbpController controller =
      Get.put(AssignedPagePnbpController(AssignedPagePnbpModel().obs));

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      Provider.of<AsignedProvider>(context, listen: false).getPNBP();
    });
  }

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
              Padding(
                  padding: getPadding(left: 4),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                            padding: getPadding(
                                left: 16, top: 10, right: 16, bottom: 7),
                            decoration: AppDecoration.txtFillBlack9000a
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.txtCircleBorder16),
                            child: Text("lbl_bandung".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoRegular14Black900dd
                                    .copyWith(
                                        letterSpacing: 0.25, height: 1.00))),
                        Container(
                            padding: getPadding(
                                left: 16, top: 10, right: 16, bottom: 7),
                            decoration: AppDecoration.txtFillBlack9000a
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.txtCircleBorder16),
                            child: Text("lbl_surabaya".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoRegular14Black900dd
                                    .copyWith(
                                        letterSpacing: 0.25, height: 1.00))),
                        Container(
                            padding: getPadding(
                                left: 16, top: 10, right: 16, bottom: 7),
                            decoration: AppDecoration.txtFillBlack9000a
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.txtCircleBorder16),
                            child: Text("lbl_semarang".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoRegular14Black900dd
                                    .copyWith(
                                        letterSpacing: 0.25, height: 1.00))),
                        Container(
                            padding: getPadding(left: 16, top: 8, bottom: 9),
                            decoration: AppDecoration.txtFillBlack9000a
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.txtCircleBorder16),
                            child: Text("lbl_jakarta".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: AppStyle.txtRobotoRegular14Black900dd
                                    .copyWith(
                                        letterSpacing: 0.25, height: 1.00)))
                      ])),
              Padding(
                padding: getPadding(top: 16, right: 6),
                child:
                    // FutureBuilder(
                    //   future: PnbpService().index(per_page: '1000'),
                    //   builder: (context, snapshot) {},
                    // )
                    Consumer<AsignedProvider>(
                  builder: (context, provider, _) {
                     if (provider.state == RequestState.loaded) {
                    return ListView.builder(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: provider.infraData?.data?.length,
                      itemBuilder: (context, index) {
                        return ListlabelItemWidget(
                            pnbpModel: provider.infraData?.data?[index],);
                      },
                    );
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                  }
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  
}
