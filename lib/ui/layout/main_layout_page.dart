import 'package:flutter/material.dart';
import 'package:flutter_web_1/ui/shared/custom_app_menu.dart';

class MainLayoutPage extends StatelessWidget {
  final Widget child;

  const MainLayoutPage({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            CustomAppMenu(),
            Spacer(),
            // TODO: View
            Expanded(child: child),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
