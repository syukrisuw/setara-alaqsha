import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:setara_alaqsha/controllers/app_controller.dart';
import 'package:setara_alaqsha/utils/themes/app_theme.dart';
import 'package:simple_logger/simple_logger.dart';
import 'package:setara_alaqsha/routes/app_routes.dart';

import 'package:flutter_localizations/flutter_localizations.dart';

import 'app_page_route_list.dart';

import 'controllers/main_page_controller.dart';

final logger = SimpleLogger();

void main() async {
  logger.setLevel(
    Level.INFO,
    // Includes  caller info, but this is expensive.
    includeCallerInfo: true,
  );
  WidgetsFlutterBinding.ensureInitialized();

  runApp(SetaraApp());
}

class SetaraApp extends StatelessWidget with WidgetsBindingObserver {
  const SetaraApp({Key? key}) : super(key: key);
  static const TAG = "SetaraApp";

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    logger.info("[{$TAG}.didChangeAppLifecycleState]");
    if (state == AppLifecycleState.inactive) {
      logger.info("[{$TAG}.didChangeAppLifecycleState] state=inactive");
    } else if (state == AppLifecycleState.resumed) {
      logger.info("[{$TAG}.didChangeAppLifecycleState] state=resumed");
    }
    super.didChangeAppLifecycleState(state);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.put<AppController>(AppController(), permanent: true);
    Get.put<MainPageController>(MainPageController(), permanent: true);
    return GetMaterialApp(
        initialRoute: AppRoutes
            .MAIN, //set to admin route in AppPages with name AppRoutes.MAIN (main_page.dart)
        getPages: AppPageRouteList.list,
        debugShowCheckedModeBanner: false,
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        textDirection: TextDirection.ltr,
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [const Locale('en', 'US'), const Locale('id', 'ID')],
        locale: Locale('id'));
  }
}

/*

      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('id', ''),
        const Locale('en', ''),
      ],
 */
