import 'package:state_notifier/state_notifier.dart';

class CounterController extends StateNotifier<int> {
  CounterController() : super(0);

  void increment() {
    state++;
  }
}
