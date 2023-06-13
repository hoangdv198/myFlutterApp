import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/routes/app_route.dart';
import 'package:my_flutter_app/routes/app_route.gr.dart';
import 'package:my_flutter_app/screens/login.dart';
import 'package:my_flutter_app/screens/preview.dart';

// assuing this is the root widget of your App
class App extends StatelessWidget {
  // make sure you don't initiate your router
  // inside of the build function.
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
    );
  }
}

void main() {
  runApp(App());
}
