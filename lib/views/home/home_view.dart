import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tested_web_app/views/home/home_content_desktop.dart';
import 'package:tested_web_app/views/home/home_content_mobile.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => const HomeContentMobile(),
      desktop: (context) => const HomeContentDesktop(),
    );
  }
}
