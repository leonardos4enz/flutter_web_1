import 'package:flutter/material.dart';
import 'package:flutter_web_1/route/route_generator.dart';
import 'package:flutter_web_1/ui/layout/main_layout_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Leonardo Sáenz',
      initialRoute: "/stateful",
      onGenerateRoute: RouteGenerator.generateRoute,
      builder: (_, child) {
        return MainLayoutPage(
          child: child ?? Container(),
        );
      },
    );
  }
}
