import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tested_web_app/locator.dart';
import 'package:tested_web_app/routing/route_names.dart';
import 'package:tested_web_app/routing/router.dart';
import 'package:tested_web_app/services/navigation_service.dart';
import 'package:tested_web_app/widgets/centered_view/centered_view.dart';
import 'package:tested_web_app/widgets/nav_bar/navigation_bar.dart';
import 'package:tested_web_app/widgets/nav_drawer/nav_drawer.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? const NavDrawer()
            : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: [
              const MyNavigationBar(),
              Expanded(
                child: Navigator(
                  key: locator<NavigationService>().navigatorKey,
                  onGenerateRoute: generateRoute,
                  initialRoute: homeRoute,
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
