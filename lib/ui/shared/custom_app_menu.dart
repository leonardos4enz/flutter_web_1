import 'package:flutter/material.dart';
import 'package:flutter_web_1/services/navigation_service.dart';
import 'package:flutter_web_1/ui/shared/custom_flat_button.dart';

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
                navigationService.navigateTo('/stateful');
              }),
          CustomFlatButton(
              text: "Contador Provider",
              onPressed: () {
                navigationService.navigateTo('/provider');
              }),
          CustomFlatButton(
              text: "Otra página",
              onPressed: () {
                navigationService.navigateTo('/asdasd');
              })
        ],
      ),
    );
  }
}
