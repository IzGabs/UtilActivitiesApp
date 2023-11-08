import 'package:flutter/material.dart';

class MyPainter extends CustomPainter {
  final Paint painter;

  MyPainter(this.painter);

  void drawTopCurve(double startPosition, Path shapePath, double limit) {
    final endOfCurve = startPosition * 0.3;
    final curveVariationy1 = endOfCurve - (endOfCurve * .45);

    shapePath.quadraticBezierTo(limit, curveVariationy1, limit, endOfCurve);
  }

  @override
  void paint(Canvas canvas, Size size) {
    final shapePath = Path();

    final position1 = Offset(0, size.height * .2);
    final position2 = Offset(size.width * .5, size.height * .4);
    final position3 = Offset(size.width * .5, size.height * .8);
    final position4 = Offset(0, size.height * .7);

    final topCurve = Offset(position2.dx + 20, position1.dy);
    final bottomCurve = Offset(0, size.height * .8);

    shapePath
      ..moveTo(position1.dx, position1.dy)
      ..quadraticBezierTo(
        topCurve.dx,
        topCurve.dy,
        position2.dx,
        position2.dy,
      )
      ..lineTo(position3.dx, position3.dy)
      ..quadraticBezierTo(
        bottomCurve.dx,
        bottomCurve.dy,
        position4.dx,
        position4.dy,
      )
      ..moveTo(0, position1.dy);

    shapePath.close();

    shapePath.close();
    canvas.drawPath(shapePath, painter);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
