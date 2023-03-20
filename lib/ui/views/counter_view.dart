import 'package:flutter/material.dart';
import 'package:flutter_web_1/ui/shared/custom_app_menu.dart';
import 'package:flutter_web_1/ui/shared/custom_flat_button.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomAppMenu(),
        Spacer(),
        Text("Contador Stateful"),
        FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Contador: $contador",
              style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomFlatButton(
                // color: Color.fromARGB(255, 177, 128, 255),
                text: "Incrementar",
                onPressed: () {
                  setState(() {
                    contador++;
                  });
                }),
            CustomFlatButton(
                text: "Decrementar",
                onPressed: () {
                  setState(() {
                    contador--;
                  });
                }),
          ],
        ),
        Spacer(),
      ],
    );
  }
}
