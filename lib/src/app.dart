import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:state_notifier_sample/src/components/counter_page.dart';
import 'package:state_notifier_sample/src/controller/counter_controller.dart';
import 'package:state_notifier_sample/src/state/counter_state.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<CounterController, CounterState>(
      create: (_) => CounterController(),
      child: MaterialApp(
        home: const CounterPage(),
      ),
    );
  }
}
