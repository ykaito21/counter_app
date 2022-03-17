import 'package:counter_app/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = ChangeNotifierProvider<CounterNotifier>((ref) {
  return CounterNotifier();
});

class CounterNotifier extends ChangeNotifier {
  Counter _counter = const Counter(0);
  Counter get counter => _counter;

  void increment() {
    _counter = Counter(_counter.value + 1);
    notifyListeners();
  }
}
