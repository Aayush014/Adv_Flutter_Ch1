import 'package:adv_flutter_ch1/Counter%20App/provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          Provider.of<CounterProvider>(context, listen: true).num.toString(),
          style: TextStyle(
            color: (Provider.of<CounterProvider>(context).num % 2 == 0)
                ? Colors.red
                : Colors.blue,
            fontSize: 55,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.blue,
            onPressed: () {
              Provider.of<CounterProvider>(context, listen: false).incr();
            },
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            backgroundColor: Colors.blue,
            onPressed: () {
              Provider.of<CounterProvider>(context, listen: false).zero();
            },
            child: const Icon(Icons.restart_alt),
          ),
          FloatingActionButton(
            backgroundColor: Colors.blue,
            onPressed: () {
              Provider.of<CounterProvider>(context, listen: false).dec();
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}

bool click = false;
