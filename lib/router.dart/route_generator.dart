import 'package:flutter/material.dart';
import 'package:flutter_web_1/ui/pages/counter_page.dart';
import 'package:flutter_web_1/ui/pages/counter_provider_page.dart';
import 'package:flutter_web_1/ui/pages/page_404.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/stateful':
        return _fadeRoute(CounterPage(), '/stateful');
      case '/provider':
        return _fadeRoute(CounterProviderPage(), '/provider');
      default:
        return _fadeRoute(Page404(), '/404');
    }
  }

  static PageRoute _fadeRoute(Widget child, String routeName) {
    return PageRouteBuilder(
      settings: RouteSettings(name: routeName),
      pageBuilder: (context, animation, secondaryAnimation) => child,
      transitionDuration: Duration(milliseconds: 100),
      transitionsBuilder: (context, animation, secondaryAnimation, child) => FadeTransition(
        opacity: animation,
        child: child,
      ),
    );
  }
}
