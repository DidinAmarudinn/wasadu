import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wasdu_mobile2/presentation/assigned_page_infrastructure_page/models/infra_model.dart';
import 'package:wasdu_mobile2/presentation/assigned_page_pnbp_page/controller/assigned_provider.dart';
import 'package:wasdu_mobile2/services/PnbpService.dart';
import 'package:wasdu_mobile2/services/infraService.dart';

import 'core/app_export.dart';
import 'presentation/assigned_page_infrastructure_page/controller/infra_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  bool isLoggedIn = sharedPreferences.getString('token')?.isEmpty ?? true;

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((value) {
    Logger.init(kReleaseMode ? LogMode.live : LogMode.debug);
    runApp(MyApp(isLoggedIn: isLoggedIn));
  });
}

class MyApp extends StatelessWidget {
  final bool isLoggedIn;
  const MyApp({required this.isLoggedIn});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => InfraProvider(InfraService())),
        ChangeNotifierProvider(create: (_) => AsignedProvider(PnbpService())),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        translations: AppLocalization(),
        locale: Get.deviceLocale, //for setting localization strings
        fallbackLocale: Locale('en', 'US'),
        title: 'ESDMWasdu',
        initialBinding: InitialBindings(),
        initialRoute: isLoggedIn
            ? AppRoutes.initialRoute
            : AppRoutes.assignedPagePnbpTabContainerScreen,
        getPages: AppRoutes.pages,
      ),
    );
  }
}
