import 'package:flutter/material.dart';

class BackgroundClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, 40);
    path.lineTo(60, 90);
    path.lineTo(60, 200);
    path.lineTo(160, 290);
    path.lineTo(size.width - 60, 220);
    path.lineTo(size.width, 250);
    path.lineTo(size.width, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
