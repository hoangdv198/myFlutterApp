import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;

  void increaseCount() {
    setState(() {});
    counter++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(children: [
            Text(
              'Counter: $counter',
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
            TextButton(onPressed: increaseCount, child: Text('Up'))
          ]),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          // Scaffold.of(context).showSnackBar(
          //   const SnackBar(
          //     content: Text('SnackBar'),
          //   ),

          // );
        }));
  }
}
