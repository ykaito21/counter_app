import 'package:counter_app/counter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = StateProvider<Counter>((ref) {
  return const Counter(0);
});
