import 'package:flutter/material.dart';
import 'package:flutter_web_1/ui/shared/custom_flat_button.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      // height: 50,
      color: Colors.transparent,
      child: Row(
        children: [
          CustomFlatButton(
              text: "Contador Stateful",
              onPressed: () {
                Navigator.pushNamed(context, '/stateful');
              }),
          CustomFlatButton(
              text: "Contador Provider",
              onPressed: () {
                Navigator.pushNamed(context, '/provider');
              }),
          CustomFlatButton(
              text: "Otra página",
              onPressed: () {
                Navigator.pushNamed(context, '/adfrad');
              })
        ],
      ),
    );
  }
}
