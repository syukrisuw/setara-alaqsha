import 'package:get/get.dart';
import 'package:setara_alaqsha/controllers/dashboard_controller.dart';
import 'package:setara_alaqsha/controllers/main_page_controller.dart';
import 'package:setara_alaqsha/controllers/transaction_controller.dart';
/*
import 'package:fometic_app/apps/controllers/main_page_controller.dart';
import 'package:fometic_app/apps/controllers/home_controller.dart';
import 'package:fometic_app/apps/controllers/settings_controller.dart';
import 'package:fometic_app/apps/controllers/favourites_controller.dart';
import 'package:fometic_app/apps/controllers/events_controller.dart';
import 'package:fometic_app/apps/controllers/histories_controller.dart';
*/

class MainBinding extends Bindings {

  @override
  void dependencies() {
    Get.put<MainPageController>(MainPageController(),permanent: true);
    //Get.put(TransactionController());
    Get.lazyPut(()=>TransactionController(), fenix: true, tag: "TransactionControllerTag");
    Get.lazyPut(()=>DashboardController(), fenix: true, tag: "DashboardControllerTag");
/*    Get.put(HomeController());
    Get.put(FavouritesController());
    //Get.put(EventsController());
    Get.lazyPut<EventsController>(() => EventsController());
    Get.put(HistoriesController());
//    Get.lazyPut<HistoriesController>(() => HistoriesController());
    Get.put(SettingsController());

 */
  }
}