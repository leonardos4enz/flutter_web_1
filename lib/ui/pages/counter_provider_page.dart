import 'package:flutter/material.dart';
import 'package:flutter_web_1/ui/shared/custom_app_menu.dart';
import 'package:flutter_web_1/ui/shared/custom_flat_button.dart';

class CounterProviderPage extends StatefulWidget {
  const CounterProviderPage({super.key});

  @override
  State<CounterProviderPage> createState() => _CounterProviderPageState();
}

class _CounterProviderPageState extends State<CounterProviderPage> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomAppMenu(),
          Spacer(),
          Text("Contador Provider"),
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
      ),
    );
  }
}
