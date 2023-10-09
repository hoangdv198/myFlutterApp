import 'package:flutter/material.dart';
import 'package:my_flutter_app/routes/app_route.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:media_kit/media_kit.dart';                      // Provides [Player], [Media], [Playlist] etc.
import 'package:media_kit_video/media_kit_video.dart';  
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
  WidgetsFlutterBinding.ensureInitialized();
  MediaKit.ensureInitialized();
  runApp(App());
}
