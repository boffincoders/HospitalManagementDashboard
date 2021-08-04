import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Image.asset("assets/images/logo.png"),
          ),
          DrawerListTile(
            title: "Dashboard",
            svgSrc: "assets/icons/menu_dashbord.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Pages",
            svgSrc: "assets/icons/page.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Applications",
            svgSrc: "assets/icons/application.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "UI Components",
            svgSrc: "assets/icons/ui.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Widgets",
            svgSrc: "assets/icons/widget.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Forms",
            svgSrc: "assets/icons/forms.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Charts",
            svgSrc: "assets/icons/chart.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Settings",
            svgSrc: "assets/icons/menu_setting.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: primaryColor,
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: primaryColor),
      ),
    );
  }
}
