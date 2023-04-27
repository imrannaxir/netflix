import 'package:flutter/material.dart';
import 'package:netflix/detail_screen.dart';
import 'first_screen.dart';
import 'home_screen.dart';
import 'route_names.dart';
import 'second_screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.firstScreen:
        return MaterialPageRoute(builder: (context) {
          return const FirstScreen();
        });
      case RouteNames.secondScreen:
        return ScaleFadeTransition(
          page: const SecondScreen(),
        );
      case RouteNames.homeScreen:
        return ScaleFadeTransition(
          page: const HomeScreen(),
        );
      default:
        return ScaleFadeTransition(
          page: const DetailScreen(),
        );
    }
  }
}

class ScaleFadeTransition extends PageRouteBuilder {
  ScaleFadeTransition({required this.page, RouteSettings? settings})
      : super(
          pageBuilder: (context, animation, reverseAnimation) => page,
          transitionDuration: const Duration(seconds: 2),
          reverseTransitionDuration: const Duration(seconds: 2),
          settings: settings,
          transitionsBuilder: (
            context,
            animation,
            reverseAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: ScaleTransition(
              scale:
                  CurvedAnimation(parent: animation, curve: Curves.bounceInOut),
              child: child,
            ),
          ),
        );
  final Widget page;
}
