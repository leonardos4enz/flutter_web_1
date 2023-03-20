import 'package:flutter/material.dart';
import 'package:flutter_web_1/ui/shared/custom_app_menu.dart';

class MainLayoutPage extends StatefulWidget {
  const MainLayoutPage({super.key});

  @override
  State<MainLayoutPage> createState() => _MainLayoutPageState();
}

class _MainLayoutPageState extends State<MainLayoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            CustomAppMenu(),
            Spacer(),
            // TODO: View
            Spacer(),
          ],
        ),
      ),
    );
  }
}
