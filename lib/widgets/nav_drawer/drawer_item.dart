import 'package:flutter/material.dart';
import 'package:tested_web_app/widgets/nav_bar/nav_bar_item.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final String navigatorPath;
  const DrawerItem({
    super.key,
    required this.title,
    required this.icon,
    required this.navigatorPath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 30,
        top: 60,
      ),
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(width: 30),
          NavBarItem(
            title: title,
            navigatorPath: navigatorPath,
          ),
        ],
      ),
    );
  }
}
