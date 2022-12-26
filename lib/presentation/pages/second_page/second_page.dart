import 'package:flutter/material.dart';
import 'package:simple_widget/presentation/navigation/models_arguments/count_argument.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key, required this.counterValueArgumet, });

  final CounterValueArgument counterValueArgumet;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
        centerTitle: true,
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Your value: ${counterValueArgumet.value}', style: TextStyle(fontSize: 30),),
          ],
        ),
      ),
    );
  }
}
