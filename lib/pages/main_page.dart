import 'package:get/get.dart';
import 'package:setara_alaqsha/components/profile_card.dart';
import 'package:setara_alaqsha/components/search_field.dart';
import 'package:setara_alaqsha/controllers/main_page_controller.dart';
import 'package:setara_alaqsha/pages/sections/home/home_section.dart';
import 'package:setara_alaqsha/utils/responsive/responsive.dart';
import 'package:setara_alaqsha/utils/strutils/string_constant.dart';
import 'package:flutter/material.dart';

import 'package:setara_alaqsha/components/side_menu.dart';
import 'package:simple_logger/simple_logger.dart';

final logger = SimpleLogger();

class MainPage extends GetView<MainPageController> {

  final String pageTitle = "Masjid Al-Aqsha Permata Bintaro";
  Widget initialContentWidget = HomeSection();

//  MainPage({Key? key, required this.pageTitle, required this.initialContentWidget}) : super(key: key);

  Key _simpleKey = UniqueKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 40,
          leading: SizedBox(
            width: 10,
          ),
          title: Text(pageTitle),
          actions: <Widget>[
            const SearchField(),
            GetBuilder<MainPageController>(
              init: MainPageController(),
              builder: (controller) {
                return Container(
                  child: controller.isUserLoggedIn
                      ? ProfileCard(
                          logOutPressed: () {
                            controller.userLoggedOut();
                            logger.info("User Sign Out");
                          },
                        )
                      : TextButton(
                          child: Text(SignInText),
                          onPressed: () {
                            controller.userLoggedIn();
                            logger.info("User Sign In");
                          },
                        ),
                );
              },
            )
          ],
        ),
        key: controller.scaffoldKey,
        drawer: SideMenu(onClickMenu: controller.onClickMenu),
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // We want this side menu only for large screen
              if (Responsive.isDesktop(context))
                Expanded(
                  // default flex = 1
                  // and it takes 1/6 part of the screen
                  child: SideMenu(onClickMenu: controller.onClickMenu),
                ),
              Expanded(
                // Page Container that takes 5/6 part of the screen
                flex: 5,
                child: GetBuilder<MainPageController>(
                  builder: (controller) {
                    if (controller.setaraPageWidget == null) {
                      controller.setupSetaraSectionWidget(initialContentWidget);
                    }

                    return controller.setaraPageWidget!;
                  },
                ),
              )
            ],
          ),
        ),
        floatingActionButton: Responsive.isDesktop(context)
            ? null
            : FloatingActionButton.small(
                child: Icon(Icons.menu), onPressed: controller.controlMenu));
  }
}
