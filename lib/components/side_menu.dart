import 'package:flutter/material.dart';

import 'drawer_list_tile.dart';

typedef SideMenuCallback = void Function(
    String menuName, String actionPushed);

class SideMenu extends StatelessWidget {
  final SideMenuCallback onClickMenu;

  const SideMenu({
    Key? key,
    required this.onClickMenu
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).appBarTheme.backgroundColor,
        child: ListView(
          shrinkWrap: true,
        children: <Widget>[
          DrawerHeader(
            child: Image.asset("assets/images/logo.png"),
          ),
          DrawerListTile(
            title: "Home",
            svgSrc: "assets/icons/menu_home.svg",
            press: () => onClickMenu("Home", "OnClick"),
          ),
          DrawerListTile(
            title: "Dashboard",
            svgSrc: "assets/icons/menu_dashbord.svg",
            press: () => onClickMenu("Dashboard", "OnClick"),
          ),
          DrawerListTile(
            title: "Manajemen Acara",
            svgSrc: "assets/icons/menu_notification.svg",
            press: () => onClickMenu("Agenda", "OnClick"),
          ),
          DrawerListTile(
            title: "Manajemen Aset",
            svgSrc: "assets/icons/menu_task.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Transaksi",
            svgSrc: "assets/icons/menu_tran.svg",
            press: () => onClickMenu("Transaksi", "OnClick"),
          ),
          DrawerListTile(
            title: "Pendaftaran Anggota",
            svgSrc: "assets/icons/menu_profile.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Laporan",
            svgSrc: "assets/icons/menu_doc.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Pengaturan",
            svgSrc: "assets/icons/menu_setting.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Change Theme",
            svgSrc: "assets/icons/menu_setting.svg",
            press: () => onClickMenu("Theme", "OnClick"),
          ),
        ],
      ),)
    );
  }
}


