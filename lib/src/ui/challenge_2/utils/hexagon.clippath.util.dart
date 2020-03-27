import 'package:flutter/material.dart';
import 'dart:math' as math;

class HexagonClipper extends CustomClipper<Path> {
  final double diameter;

  HexagonClipper({this.diameter = 150});

  @override
  Path getClip(Size size) {
    var path = Path();
    // ..style = PaintingStyle.fill
    // ..color = BLUE_NORMAL
    // ..isAntiAlias = true;
    // List<Point> list1 = [

    double D = diameter;
    double alpha = (D / 4).toDouble();
    double beta = (math.sqrt(3) * alpha).toDouble();

    math.Point point_1 =
        math.Point(0.0 + diameter / 2, -2 * alpha + diameter / 2);
    math.Point point_2 = math.Point(beta + diameter / 2, -alpha + diameter / 2);
    math.Point point_3 = math.Point(beta + diameter / 2, alpha + diameter / 2);
    math.Point point_4 =
        math.Point(0.0 + diameter / 2, 2 * alpha + diameter / 2);
    math.Point point_5 = math.Point(-beta + diameter / 2, alpha + diameter / 2);
    math.Point point_6 =
        math.Point(-beta + diameter / 2, -alpha + diameter / 2);

    path.moveTo(point_1.x, point_1.y);
    path.lineTo(point_1.x, point_1.y);
    path.lineTo(point_2.x, point_2.y);
    path.lineTo(point_3.x, point_3.y);
    path.lineTo(point_4.x, point_4.y);
    path.lineTo(point_5.x, point_5.y);
    path.lineTo(point_6.x, point_6.y);
    path.lineTo(point_1.x, point_1.y);

    // path.lineTo(point_1.x , point_1.y);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
