import 'package:flutter/material.dart';
import 'package:simple_widget/presentation/navigation/models_arguments/count_argument.dart';
import 'package:simple_widget/presentation/pages/first_page/first_page.dart';

import '../pages/second_page/second_page.dart';

class AppRouter {
  // Route name constants
  static const String firstPage = '/firstPage';
  static const String secondPage = '/secondPage';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case '/firstPage':
        return MaterialPageRoute(
          builder: (_) => const FirstPage(),
        );
      case '/secondPage':
        return MaterialPageRoute(
          builder: (_) => SecondPage(
            counterValueArgumet: arguments as CounterValueArgument,
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
