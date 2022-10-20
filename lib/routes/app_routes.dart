import 'package:wasdu_mobile2/presentation/histories_screen/histories_screen.dart';
import 'package:wasdu_mobile2/presentation/individual_infra_detail_page/individual_infra_detail_page.dart';
import 'package:wasdu_mobile2/presentation/individual_infra_tab_container_screen/binding/individual_infra_tab_container_binding.dart';
import 'package:wasdu_mobile2/presentation/individual_infra_tab_container_screen/individual_infra_tab_container_screen.dart';
import 'package:wasdu_mobile2/presentation/notifications_screen/notifications_screen.dart';
import 'package:wasdu_mobile2/presentation/splash_screen/splash_screen.dart';
import 'package:wasdu_mobile2/presentation/splash_screen/binding/splash_binding.dart';
import 'package:wasdu_mobile2/presentation/login_screen/login_screen.dart';
import 'package:wasdu_mobile2/presentation/login_screen/binding/login_binding.dart';
import 'package:wasdu_mobile2/presentation/navbottombar_screen/navbottombar_screen.dart';
import 'package:wasdu_mobile2/presentation/navbottombar_screen/binding/navbottombar_binding.dart';
import 'package:wasdu_mobile2/presentation/assigned_page_detail_pnbp_screen/assigned_page_detail_pnbp_screen.dart';
import 'package:wasdu_mobile2/presentation/assigned_page_detail_pnbp_screen/binding/assigned_page_detail_pnbp_binding.dart';
import 'package:wasdu_mobile2/presentation/detail_view_pnbp_input_opini_screen/detail_view_pnbp_input_opini_screen.dart';
import 'package:wasdu_mobile2/presentation/detail_view_pnbp_input_opini_screen/binding/detail_view_pnbp_input_opini_binding.dart';
import 'package:wasdu_mobile2/presentation/assigned_page_pnbp_tab_container_screen/assigned_page_pnbp_tab_container_screen.dart';
import 'package:wasdu_mobile2/presentation/assigned_page_pnbp_tab_container_screen/binding/assigned_page_pnbp_tab_container_binding.dart';
import 'package:wasdu_mobile2/presentation/infra_list_audit_tab_container_screen/infra_list_audit_tab_container_screen.dart';
import 'package:wasdu_mobile2/presentation/infra_list_audit_tab_container_screen/binding/infra_list_audit_tab_container_binding.dart';
import 'package:wasdu_mobile2/presentation/bulk_infra_detail_screen/bulk_infra_detail_screen.dart';
import 'package:wasdu_mobile2/presentation/bulk_infra_detail_screen/binding/bulk_infra_detail_binding.dart';
import 'package:wasdu_mobile2/presentation/assigned_page_detail_assets_bulk_insert_screen/assigned_page_detail_assets_bulk_insert_screen.dart';
import 'package:wasdu_mobile2/presentation/assigned_page_detail_assets_bulk_insert_screen/binding/assigned_page_detail_assets_bulk_insert_binding.dart';
import 'package:wasdu_mobile2/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:wasdu_mobile2/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';
import 'package:wasdu_mobile2/presentation/user_profile_screen/user_profile_screen.dart';

class AppRoutes {
  static String splashScreen = '/splash_screen';

  static String loginScreen = '/login_screen';

  static String navbottombarScreen = '/navbottombar_screen';

  static String assignedPageDetailPnbpScreen =
      '/assigned_page_detail_pnbp_screen';

  static String detailViewPnbpInputOpiniScreen =
      '/detail_view_pnbp_input_opini_screen';

  static String assignedPagePnbpTabContainerScreen =
      '/assigned_page_pnbp_tab_container_screen';

  static String infraListAuditTabContainerScreen =
      '/infra_list_audit_tab_container_screen';

  static String bulkInfraDetailScreen = '/bulk_infra_detail_screen';

  static String assignedPageDetailAssetsBulkInsertScreen =
      '/assigned_page_detail_assets_bulk_insert_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static String individualInfraTabContainerScreen =
      '/individual_infra_tab_container_screen';

  static String historiesScreen = '/histories_screen';
  static String notificationsScreen = '/notifications_screen';
  static String userProfileScreen = '/user_profile_screen';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: navbottombarScreen,
      page: () => NavbottombarScreen(),
      bindings: [
        NavbottombarBinding(),
      ],
    ),
    GetPage(
      name: assignedPageDetailPnbpScreen,
      page: () => AssignedPageDetailPnbpScreen(),
      bindings: [
        AssignedPageDetailPnbpBinding(),
      ],
    ),
    GetPage(
      name: detailViewPnbpInputOpiniScreen,
      page: () => DetailViewPnbpInputOpiniScreen(),
      bindings: [
        DetailViewPnbpInputOpiniBinding(),
      ],
    ),
    GetPage(
      name: assignedPagePnbpTabContainerScreen,
      page: () => AssignedPagePnbpTabContainerScreen(),
      bindings: [
        AssignedPagePnbpTabContainerBinding(),
      ],
    ),
    GetPage(
      name: infraListAuditTabContainerScreen,
      page: () => InfraListAuditTabContainerScreen(),
      bindings: [
        InfraListAuditTabContainerBinding(),
      ],
    ),
    GetPage(
      name: bulkInfraDetailScreen,
      page: () => BulkInfraDetailScreen(),
      bindings: [
        BulkInfraDetailBinding(),
      ],
    ),
    GetPage(
      name: assignedPageDetailAssetsBulkInsertScreen,
      page: () => AssignedPageDetailAssetsBulkInsertScreen(),
      bindings: [
        AssignedPageDetailAssetsBulkInsertBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: individualInfraTabContainerScreen,
      page: () => IndividualInfraTabContainerScreen(),
      bindings: [
        IndividualInfraTabContainerBinding(),
      ],
    ),
    GetPage(
      name: historiesScreen,
      page: () => HistoriesScreen(),
    ),
    GetPage(
      name: notificationsScreen,
      page: () => NotificationsScreen(),
    ),
    GetPage(
      name: userProfileScreen,
      page: () => UserProfileScreen(),
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
  ];
}
