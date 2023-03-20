import 'package:flutter/material.dart';

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
          TextButton(
              onPressed: () {
                setState(() {
                  contador++;
                });
              },
              child: const Text("Incrementar")),
        ],
      ),
    );
  }
}
