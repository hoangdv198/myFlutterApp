import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_flutter_app/features/counter/counter_app.dart';
import 'package:my_flutter_app/features/counter/couter_observer.dart';
import 'package:my_flutter_app/features/timer/view/timer_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Timer Widget')),
        body: Center(
          child: CounterApp(),
        ),
      ),
    );
  }
}
