import 'package:flutter/material.dart';
import 'package:tested_web_app/routing/route_names.dart';
import 'package:tested_web_app/views/about_view.dart/about_view.dart';
import 'package:tested_web_app/views/episodes_view/episodes_view.dart';
import 'package:tested_web_app/views/home/home_view.dart';

Route<dynamic>? generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case homeRoute:
      return _getPageRoute(const HomeView());
    case aboutRoute:
      return _getPageRoute(const AboutView());
    case episodesRoute:
      return _getPageRoute(const EpisodesView());
    default:
      return null;
  }
}

PageRoute _getPageRoute(Widget child) {
  // return MaterialPageRoute(builder: (context) => child);
  return _FadeRoute(child: child);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  _FadeRoute({required this.child})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
