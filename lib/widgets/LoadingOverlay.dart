import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingOverlay extends StatelessWidget {
  final Widget child;
  final Widget loadingIndicator;
  final bool isLoading;

  const LoadingOverlay({
    super.key,
    required this.child,
    required this.isLoading,
    this.loadingIndicator = const CircularProgressIndicator(),
  });

  @override
  Widget build(BuildContext context) {
    const spinkit = SpinKitFadingCircle(
      color: Colors.white,
      size: 50.0,
    );
    return Stack(
      children: [
        child,
        if (isLoading == true)
          Container(
            color: Colors.black26,
            child: Center(child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: 120,
                height: 100,
                color: Colors.grey[800],
                child: spinkit,
                ),
            )),
          ),
      ],
    );
  }
}
