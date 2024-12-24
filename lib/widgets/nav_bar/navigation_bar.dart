import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tested_web_app/widgets/nav_bar/nav_bar_mobile.dart';
import 'package:tested_web_app/widgets/nav_bar/nav_bar_tablet_desktop.dart';

class MyNavigationBar extends StatelessWidget {
  const MyNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => const NavBarMobile(),
      tablet: (context) => const NavBarTabletDesktop(),
    );
  }
}
