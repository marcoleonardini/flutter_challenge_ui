import 'package:flutter/material.dart';

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    // path.moveTo(0, size.height);
    // path.quadraticBezierTo(25.0, size.height - 25, 250, size.height - 50);
    // path.moveTo(size.width, 0);
    // path.close();
    // path.lineTo(size.width / 2, size.height);
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
      size.width * 0.04,
      size.height - 30,
      size.width * 0.15,
      size.height - 30,
    );
    path.lineTo(size.width * 0.85, size.height - 30);
    path.quadraticBezierTo(
      size.width * 0.96,
      size.height - 30,
      size.width,
      size.height - 60,
    );
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
