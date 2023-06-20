import 'package:flutter/material.dart';
import 'dart:async';

class TimerWidget extends StatefulWidget {
  @override
  _TimerWidgetState createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  int _seconds = 60;
  Timer? _timer;
  TimerState _timerState = TimerState.stopped;

  void _startTimer() {
    if (_timerState == TimerState.stopped) {
      _timerState = TimerState.running;
      _timer = Timer.periodic(Duration(seconds: 1), (timer) {
        setState(() {
          if (_seconds > 0) {
            _seconds--;
          } else {
            _timer?.cancel();
            _timerState = TimerState.stopped;
          }
        });
      });
    } else if (_timerState == TimerState.paused) {
      _timerState = TimerState.running;
      _timer?.cancel();
      _timer = Timer.periodic(Duration(seconds: 1), (timer) {
        setState(() {
          if (_seconds > 0) {
            _seconds--;
          } else {
            _timer?.cancel();
            _timerState = TimerState.stopped;
          }
        });
      });
    }
  }

  void _pauseTimer() {
    if (_timerState == TimerState.running) {
      _timer?.cancel();
      _timerState = TimerState.paused;
    }
  }

  void _restartTimer() {
    if (_timerState != TimerState.running) {
      setState(() {
        _seconds = 60;
        _timerState = TimerState.stopped;
      });
    }
  }

  String _formatTime() {
    int minutes = _seconds ~/ 60;
    int seconds = _seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          _formatTime(),
          style: TextStyle(fontSize: 48),
        ),
        SizedBox(height: 20),
        if (_timerState == TimerState.stopped ||
            _timerState == TimerState.paused)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: _startTimer,
                child: Text('Play'),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: _restartTimer,
                child: Text('Restart'),
              ),
            ],
          ),
        if (_timerState == TimerState.running)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: _pauseTimer,
                child: Text('Pause'),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: _restartTimer,
                child: Text('Restart'),
              ),
            ],
          ),
      ],
    );
  }
}

enum TimerState {
  stopped,
  running,
  paused,
}
