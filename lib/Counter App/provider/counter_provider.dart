import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int num = 0;

  void incr() {
    num++;
    notifyListeners();
  }
  void dec() {
    num--;
    notifyListeners();
  }
  void zero() {
    num = 0;
    notifyListeners();
  }
}
