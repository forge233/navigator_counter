import 'package:flutter/material.dart';

import 'navigation/route.dart';

class DrawerButton extends StatelessWidget {
  const DrawerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Container(
          width: 270.0,
          height: 50.0,
          alignment: Alignment.center,
          margin: const EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: const Text(
            'Navigate to second page',
            style: TextStyle(color: Colors.white),
          ),
    );
  }
}
