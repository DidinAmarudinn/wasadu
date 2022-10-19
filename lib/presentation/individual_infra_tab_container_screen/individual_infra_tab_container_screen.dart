import 'controller/individual_infra_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:wasdu_mobile2/core/app_export.dart';
import 'package:wasdu_mobile2/presentation/individual_infra_detail_page/individual_infra_detail_page.dart';
import 'package:wasdu_mobile2/presentation/individual_infra_detail_infra_list_page/individual_infra_detail_infra_list_page.dart';
import 'package:wasdu_mobile2/widgets/custom_bottom_bar.dart';

class IndividualInfraTabContainerScreen
    extends GetWidget<IndividualInfraTabContainerController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        appBar: AppBar(
          leading: Builder(builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Get.back();
              },
              color: Colors.black,
            );
          }),
          backgroundColor: Colors.white,
          bottom: TabBar(
            labelColor: Color(0xff1976D2),
            tabs: [
              Tab(
                text: "Detail".tr,
              ),
              Tab(
                text: "Infra List".tr,
              ),
            ],
          ),
          title: const Text(
            'Assigned Infrastructure',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Container(
          width: size.width,
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: getMargin(
                    left: 20,
                    top: 16,
                    right: 12,
                  ),
                  height: getVerticalSize(
                    490.00,
                  ),
                  child: TabBarView(
                    children: [
                      IndividualInfraDetailPage(),
                      IndividualInfraDetailInfraListPage(),
                    ],
                  ),
                )
              ]),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            controller.type.value = type;
          },
        ),
      ),
    );
  }

  ///Handling view based on bottom click actions
  Widget getCurrentWidget(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Assigned:
        return getDefaultWidget();
      case BottomBarEnum.History:
        return getDefaultWidget();
      case BottomBarEnum.Notification:
        return getDefaultWidget();
      case BottomBarEnum.User:
        return getDefaultWidget();
      default:
        return getDefaultWidget();
    }
  }
}
