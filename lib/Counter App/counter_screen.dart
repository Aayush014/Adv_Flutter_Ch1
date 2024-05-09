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
          style: const TextStyle(
            fontSize: 50,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          Provider.of<CounterProvider>(context, listen: false).incr();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
