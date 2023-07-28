import 'package:flutter/material.dart';

class CircleWidget extends StatelessWidget {
  final Color borderColor;
  final double? borderWidth;
  final double? size;
  final String? imageUrl;

  const CircleWidget({
    super.key,
    this.borderColor = const Color(0xFF262626),
    this.borderWidth = 1,
    this.size = 27,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: borderColor,
          width: borderWidth ?? 1,
        ),
      ),
      child: imageUrl != null
          ? ClipOval(
              child: Image.network(
                imageUrl!,
                fit: BoxFit.cover,
              ),
            )
          : null,
    );
  }
}
