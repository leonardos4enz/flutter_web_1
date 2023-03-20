import 'package:flutter/material.dart';
import 'package:flutter_web_1/ui/pages/counter_page.dart';
import 'package:flutter_web_1/ui/pages/counter_provider_page.dart';
import 'package:flutter_web_1/ui/pages/page_404.dart';

class RouterGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/stateful':
        return MaterialPageRoute(builder: (_) => const CounterPage());
      case '/provider':
        return MaterialPageRoute(builder: (_) => const CounterProviderPage());
      default:
        return MaterialPageRoute(builder: (_) => const Page404());
    }
  }
}
