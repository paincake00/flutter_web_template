import 'package:flutter/material.dart';
import 'package:tested_web_app/routing/route_names.dart';
import 'package:tested_web_app/widgets/nav_bar/nav_bar_item.dart';
import 'package:tested_web_app/widgets/nav_bar/nav_bar_logo.dart';

class NavBarTabletDesktop extends StatelessWidget {
  const NavBarTabletDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              NavBarItem(
                title: 'Episodes',
                navigatorPath: episodesRoute,
              ),
              SizedBox(
                width: 60,
              ),
              NavBarItem(
                title: 'About',
                navigatorPath: aboutRoute,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
