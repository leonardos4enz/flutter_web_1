import 'package:flutter/material.dart';
import 'package:flutter_web_1/services/navigation_service.dart';
import 'package:flutter_web_1/ui/shared/custom_flat_button.dart';

import '../../locator.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      // height: 50,
      color: Colors.transparent,
      child: Row(
        children: [
          CustomFlatButton(
              text: "Contador Stateful",
              onPressed: () {
                locator<NavigationService>().navigateTo('/stateful');
              }),
          CustomFlatButton(
              text: "Contador Provider",
              onPressed: () {
                locator<NavigationService>().navigateTo('/provider');
              }),
          CustomFlatButton(
              text: "Otra página",
              onPressed: () {
                locator<NavigationService>().navigateTo('/asdasd');
              })
        ],
      ),
    );
  }
}
