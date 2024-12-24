import 'package:flutter/material.dart';
import 'package:tested_web_app/constants/app_colors.dart';
import 'package:tested_web_app/routing/route_names.dart';
import 'package:tested_web_app/widgets/nav_drawer/drawer_item.dart';
import 'package:tested_web_app/widgets/nav_drawer/nav_drawer_header.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            blurRadius: 16,
          ),
        ],
      ),
      child: const Column(
        children: [
          NavDrawerHeader(),
          DrawerItem(
            title: 'Episodes',
            icon: Icons.videocam,
            navigatorPath: episodesRoute,
          ),
          DrawerItem(
            title: 'About',
            icon: Icons.help,
            navigatorPath: aboutRoute,
          ),
        ],
      ),
    );
  }
}
