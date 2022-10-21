import 'package:provider/provider.dart';
import 'package:wasdu_mobile2/core/constants/request_state.dart';
import 'package:wasdu_mobile2/presentation/assigned_page_infrastructure_page/controller/infra_provider.dart';

import '../assigned_page_infrastructure_page/widgets/listlabel1_item_widget.dart';
import 'controller/assigned_page_infrastructure_controller.dart';
import 'models/assigned_page_infrastructure_model.dart';
import 'models/listlabel1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wasdu_mobile2/core/app_export.dart';
import 'package:wasdu_mobile2/widgets/custom_text_form_field.dart';

class AssignedPageInfrastructurePage extends StatefulWidget {
  @override
  State<AssignedPageInfrastructurePage> createState() =>
      _AssignedPageInfrastructurePageState();
}

class _AssignedPageInfrastructurePageState
    extends State<AssignedPageInfrastructurePage> {
  final TextEditingController textEditingcontroller = TextEditingController();
   AssignedPageInfrastructureController controller = Get.put(
      AssignedPageInfrastructureController(
          AssignedPageInfrastructureModel().obs));

  @override
  void initState() {
    Future.microtask(() {
      Provider.of<InfraProvider>(context, listen: false).getInfra();
    });
    super.initState();
  }

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
                  padding: getPadding(
                    left: 2,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        padding: getPadding(
                          left: 16,
                          top: 10,
                          right: 16,
                          bottom: 7,
                        ),
                        decoration: AppDecoration.txtFillBlack9000a.copyWith(
                          borderRadius: BorderRadiusStyle.txtCircleBorder16,
                        ),
                        child: Text(
                          "lbl_bandung".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRegular14Black900dd.copyWith(
                            letterSpacing: 0.25,
                            height: 1.00,
                          ),
                        ),
                      ),
                      Container(
                        padding: getPadding(
                          left: 16,
                          top: 10,
                          right: 16,
                          bottom: 7,
                        ),
                        decoration: AppDecoration.txtFillBlack9000a.copyWith(
                          borderRadius: BorderRadiusStyle.txtCircleBorder16,
                        ),
                        child: Text(
                          "lbl_surabaya".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRegular14Black900dd.copyWith(
                            letterSpacing: 0.25,
                            height: 1.00,
                          ),
                        ),
                      ),
                      Container(
                        padding: getPadding(
                          left: 16,
                          top: 10,
                          right: 16,
                          bottom: 7,
                        ),
                        decoration: AppDecoration.txtFillBlack9000a.copyWith(
                          borderRadius: BorderRadiusStyle.txtCircleBorder16,
                        ),
                        child: Text(
                          "lbl_semarang".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRegular14Black900dd.copyWith(
                            letterSpacing: 0.25,
                            height: 1.00,
                          ),
                        ),
                      ),
                      Container(
                        padding: getPadding(
                          left: 16,
                          top: 8,
                          bottom: 9,
                        ),
                        decoration: AppDecoration.txtFillBlack9000a.copyWith(
                          borderRadius: BorderRadiusStyle.txtCircleBorder16,
                        ),
                        child: Text(
                          "lbl_jakarta".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: AppStyle.txtRobotoRegular14Black900dd.copyWith(
                            letterSpacing: 0.25,
                            height: 1.00,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 16,
                  right: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      padding: getPadding(
                        left: 16,
                        top: 9,
                        right: 16,
                        bottom: 8,
                      ),
                      decoration: AppDecoration.txtFillBlack9000a.copyWith(
                        borderRadius: BorderRadiusStyle.txtCircleBorder16,
                      ),
                      child: Text(
                        "lbl_pjuts".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoRegular14Black900dd.copyWith(
                          letterSpacing: 0.25,
                          height: 1.00,
                        ),
                      ),
                    ),
                    Container(
                      margin: getMargin(
                        left: 8,
                      ),
                      padding: getPadding(
                        left: 16,
                        top: 8,
                        right: 16,
                        bottom: 9,
                      ),
                      decoration: AppDecoration.txtFillBlack9000a.copyWith(
                        borderRadius: BorderRadiusStyle.txtCircleBorder16,
                      ),
                      child: Text(
                        "lbl_konkit".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoRegular14Black900dd.copyWith(
                          letterSpacing: 0.25,
                          height: 1.00,
                        ),
                      ),
                    ),
                    Container(
                      margin: getMargin(
                        left: 8,
                      ),
                      padding: getPadding(
                        left: 16,
                        top: 10,
                        right: 16,
                        bottom: 7,
                      ),
                      decoration: AppDecoration.txtFillBlack9000a.copyWith(
                        borderRadius: BorderRadiusStyle.txtCircleBorder16,
                      ),
                      child: Text(
                        "lbl_jargas".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoRegular14Black900dd.copyWith(
                          letterSpacing: 0.25,
                          height: 1.00,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              CustomTextFormField(
                width: 332,
                focusNode: FocusNode(),
                controller: controller.vinputslotController,
                hintText: "lbl_search".tr,
                margin: getMargin(
                  left: 9,
                  top: 30,
                  right: 5,
                ),
                variant: TextFormFieldVariant.UnderLineBlack9006b,
                padding: TextFormFieldPadding.PaddingB13,
                textInputAction: TextInputAction.done,
                alignment: Alignment.center,
              ),
              Padding(
                padding: getPadding(
                  top: 15,
                  right: 10,
                ),
                child: Consumer<InfraProvider>(builder: (context, provider, _) {
                  if (provider.state == RequestState.loaded) {
                    return ListView.builder(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: provider.infraData?.data?.length,
                      itemBuilder: (context, index) {
                        return Listlabel1ItemWidget(
                            provider.infraData?.data?[index]);
                      },
                    );
                  } else {
                    return CircularProgressIndicator();
                  }
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
