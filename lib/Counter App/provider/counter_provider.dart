import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int num = 0;

  void incr() {
    num++;
    notifyListeners();
  }
}
