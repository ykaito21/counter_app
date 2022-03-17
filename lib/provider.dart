import 'package:counter_app/counter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';

final counterProvider = Provider.autoDispose<CounterNotifier>((ref) {
  final notifier = CounterNotifier();
  ref.onDispose(() {
    notifier.dispose();
  });
  return notifier;
});

class CounterNotifier {
  final _counterSubject = BehaviorSubject<Counter>.seeded(const Counter(0));
  Stream<Counter> get streamCounter => _counterSubject.stream;
  void Function(Counter) get increment => _counterSubject.add;
  Counter get counter => _counterSubject.value;

  void dispose() {
    _counterSubject.close();
  }
}
