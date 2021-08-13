import 'package:state_notifier/state_notifier.dart';
import 'package:state_notifier_sample/src/state/counter_state.dart';

class CounterController extends StateNotifier<CounterState> {
  CounterController() : super(CounterState(count: 0, isEnabled: false));

  void increment() {
    state = state.copyWith(count: state.count! + 1);
  }

  void disableCounter() {
    state = state.copyWith(isEnabled: false);
  }
}
