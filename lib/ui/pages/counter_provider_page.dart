import 'package:flutter/material.dart';
import 'package:flutter_web_1/providers/counter_provider.dart';
import 'package:flutter_web_1/ui/shared/custom_app_menu.dart';
import 'package:flutter_web_1/ui/shared/custom_flat_button.dart';
import 'package:provider/provider.dart';

class CounterProviderPage extends StatelessWidget {
  const CounterProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (_) => CounterProvider(), child: _CounterProviderPageBody());
  }
}

class _CounterProviderPageBody extends StatelessWidget {
  const _CounterProviderPageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);

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
                "Contador: ${counterProvider.counter}",
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
                    counterProvider.increment();
                  }),
              CustomFlatButton(
                  text: "Decrementar",
                  onPressed: () {
                    counterProvider.decrement();
                  }),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}
