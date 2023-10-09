import 'package:flutter/material.dart';
import 'package:my_flutter_app/core/api/models/auth/user.dart';
import 'package:my_flutter_app/core/api/rest_client.dart';
import 'package:my_flutter_app/routes/app_route.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:media_kit/media_kit.dart'; // Provides [Player], [Media], [Playlist] etc.

final dio = Dio(); // Provide a dio instance
final logger = Logger();
final RestClient client = RestClient(dio);
User? user;

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
  WidgetsFlutterBinding.ensureInitialized();
  MediaKit.ensureInitialized();
  runApp(App());
}
