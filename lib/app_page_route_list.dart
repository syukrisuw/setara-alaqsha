import 'package:get/get.dart';
import 'package:setara_alaqsha/bindings/main_binding.dart';
import 'package:setara_alaqsha/pages/sections/home/home_section.dart';
import 'package:setara_alaqsha/pages/main_page.dart';

import 'package:setara_alaqsha/routes/app_routes.dart';
import 'package:setara_alaqsha/utils/strutils/string_constant.dart';

class AppPageRouteList {
  static var list = [
    GetPage(
      name: AppRoutes.MAIN,
      page: () => MainPage()
    ),
  ];
}