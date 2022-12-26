import 'package:flutter/material.dart';
import 'package:simple_widget/presentation/drawer_button.dart';
import 'package:simple_widget/presentation/navigation/models_arguments/count_argument.dart';
import 'package:simple_widget/presentation/navigation/route.dart';


class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter First'),
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            InkWell(
              onTap: () => Navigator.pushNamed(context, AppRouter.secondPage,
                  arguments: CounterValueArgument(value: value)),
              child: const DrawerButton(),
            ),
          ],
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(
                  () {
                    value++;
                  },
                );
              },
              child: const Text('+'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(
                  () {
                    value--;
                  },
                );
              },
              child: const Text('-'),
            )
          ],
        ),
      ),
    );
  }
}
