import 'package:flutter/material.dart';
import 'package:simple_widget/presentation/pages/first_page/first_page.dart';

import '../presentation/navigation/route.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: AppRouter.firstPage,
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
