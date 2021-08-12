import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_notifier_sample/src/controller/counter_controller.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(Provider.of<int>(context).toString()),
            ElevatedButton(
              onPressed: Provider.of<CounterController>(context, listen: false)
                  .increment,
              child: const Text('+1'),
            ),
          ],
        ),
      ),
    );
  }
}
