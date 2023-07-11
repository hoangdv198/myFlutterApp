// assuing this is the root widget of your App                 
import 'package:flutter/material.dart';
import 'package:my_flutter_app/router/router.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {            
  // make sure you don't initiate your router                
  // inside of the build function.                
  final _appRouter = AppRouter();            
            
  @override            
  Widget build(BuildContext context){            
    return MaterialApp.router(            
      routerConfig: _appRouter.config(),         
    );            
  }            
}       