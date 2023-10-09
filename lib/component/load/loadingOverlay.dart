import 'package:flutter/material.dart';

class LoadingOverlay extends StatelessWidget {
  final Widget child;
  final Widget? loadingIndicator;
  final bool isLoading;
  final Color? backgroundColor;

  const LoadingOverlay(
      {super.key,
      required this.child,
      required this.isLoading,
      this.loadingIndicator,
      this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        if (isLoading)
          Stack(
            children: [
              Container(
                color: backgroundColor ?? Colors.black45,
              ),
              const Center(
                  child: CircularProgressIndicator(color: Colors.orange)),
            ],
          ),
      ],
    );
  }
}
