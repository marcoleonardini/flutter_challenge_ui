import 'dart:typed_data';

import 'package:flutter/material.dart';

class CubePainter extends CustomPainter {
  final Color color;
  final double amount;

  CubePainter({@required this.color, this.amount = 0.1});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();

    paint.style = PaintingStyle.fill;

    paint.color = color.withOpacity(1);
    canvas.skew(0, 0.5);
    canvas.drawRect(Rect.fromLTWH(100.0, 50.0, 50, 65), paint);

    paint.color = lighten(color, amount);
    canvas.skew(0, -0.5);
    canvas.skew(0, -0.5);
    canvas.drawRect(Rect.fromLTWH(50.0, 150.0, 50, 65), paint);

    canvas.skew(0, 0.5);

    // Scale x and y by 0.5.
    canvas.transform(Float64List.fromList([
      1,
      0.0,
      0.0,
      0.0,
      0.0,
      0.5,
      0.0,
      0.0,
      0.0,
      0.0,
      1.0,
      0.0,
      0.0,
      0.0,
      0.0,
      1.0,
    ]));

    canvas.rotate(0.7853981634);
    paint.color = darken(color, amount);
    canvas.drawRect(Rect.fromLTWH(304.0, 162, 71, 71), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }

  Color darken(Color color, [double amount = 0.1]) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(color);
    final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));

    return hslDark.toColor();
  }

  Color lighten(Color color, [double amount = 0.1]) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(color);
    final hslLight =
        hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));

    return hslLight.toColor();
  }
}
