import 'package:flutter/material.dart';
import 'package:my_flutter_app/routes/app_route.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

final dio = Dio(); // Provide a dio instance
final logger = Logger();

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
