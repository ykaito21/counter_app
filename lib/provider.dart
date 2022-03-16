import 'package:counter_app/counter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = StateNotifierProvider<CounterNotifier, Counter>((ref) {
  return CounterNotifier();
});

class CounterNotifier extends StateNotifier<Counter> {
  CounterNotifier() : super(const Counter(0));

  void increment() => state = Counter(state.value + 1);
}
