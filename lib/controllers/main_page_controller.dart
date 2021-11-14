import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:setara_alaqsha/models/transaction_model.dart';
import 'package:setara_alaqsha/pages/sections/agenda/agenda_section.dart';
import 'package:setara_alaqsha/pages/sections/dashboard/dashboard_section.dart';
import 'package:setara_alaqsha/pages/sections/home/home_section.dart';
import 'package:setara_alaqsha/pages/sections/transaction/transaction_section.dart';
import 'package:setara_alaqsha/utils/themes/app_theme.dart';
import 'package:simple_logger/simple_logger.dart';


final logger = SimpleLogger();

class MainPageController extends GetxController {
  static const TAG = "MainController";
  var isUserLoggedIn = false;
  var userName = "";
  Widget? setaraPageWidget = null;
  var transactionModelList = <TransactionModel>[];

  @override
  void onInit() {
    super.onInit();
    logger.info("$TAG");

  }


  @override
  void dispose() {
    logger.info("dispose");
  }


  @override
  void onReady() {
    super.onReady();
    isUserLoggedIn = false;
    logger.info("onReady");
  }

  @override
  void refresh() {
    logger.info("refresh");
    super.refresh();
  }

  @override
  void onClose() {
    logger.info("onClose");
  }

  void setupSetaraSectionWidget(Widget pageWidget) {
    setaraPageWidget = pageWidget;
    update();
  }

  void userLoggedIn() {
    isUserLoggedIn = true;
    update();
  }

  void userLoggedOut() {
    isUserLoggedIn = false;
    update();
  }

  showText(BuildContext context) {
    return Text(
        "Width : ${MediaQuery.of(context).size.width} , Height: ${MediaQuery.of(context).size.height}");
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  void controlMenu() {
    logger.info("controlMenu Clicked");
    if (!_scaffoldKey.currentState!.isDrawerOpen) {
      _scaffoldKey.currentState!.openDrawer();
    }
  }

  void onClickMenu(String menuName, String actionPushed) {
    logger.info("menuName : $menuName  is being $actionPushed");
    switch (menuName) {
      case "Home":
        {
          setupSetaraSectionWidget(HomeSection());
          update();
        }
        break;

      case "Dashboard":
        {
          setupSetaraSectionWidget(DashboardSection());
        }
        break;

      case "Agenda":
        {
          setupSetaraSectionWidget(AgendaSection());
        }
        break;
      case "Transaksi":
        {
          setupSetaraSectionWidget(TransactionSection());
        }
        break;
      case "Theme":
        {
          Get.changeTheme(Get.isDarkMode? AppTheme.light : AppTheme.dark);
          update();
        }
        break;
      default:
        {
          setupSetaraSectionWidget(HomeSection());   //Simple No Controller landingpage section
          update();
        }
        break;
    }


    if (_scaffoldKey.currentState!.isDrawerOpen) {
      _scaffoldKey.currentState!.openEndDrawer();
    }




  }
}
