import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:my_flutter_app/app.dart';
import 'package:my_flutter_app/features/counter/couter_observer.dart';

void main() {
  Bloc.observer = const CounterObserver();
  runApp(const CounterApp());
}
