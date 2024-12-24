import 'package:flutter/material.dart';
import 'package:tested_web_app/locator.dart';
import 'package:tested_web_app/services/navigation_service.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigatorPath;
  const NavBarItem({
    super.key,
    required this.title,
    required this.navigatorPath,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(navigatorPath);
      },
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }
}
