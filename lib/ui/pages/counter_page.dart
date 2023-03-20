import 'package:flutter/material.dart';
import 'package:flutter_web_1/ui/shared/custom_flat_button.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$contador",
            style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomFlatButton(
                  color: Color.fromARGB(255, 177, 128, 255),
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
                  })
            ],
          )
        ],
      ),
    );
  }
}
