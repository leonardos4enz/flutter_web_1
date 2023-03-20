import 'package:flutter/material.dart';
import 'package:flutter_web_1/ui/pages/counter_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Leonardo Sáenz',
      initialRoute: "/stateful",
      routes: {
        '/stateful': (_) => const CounterPage(),
        '/provider': (_) => const CounterPage(),
        '/aaa': (_) => const CounterPage()
      },
    );
  }
}
