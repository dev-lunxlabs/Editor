import 'package:flutter/material.dart';

class RectanglePainter extends CustomPainter {
  RectanglePainter({required this.rectangle});
  final Rect rectangle;
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.pink.shade200
      ..style = PaintingStyle.fill;
    canvas.drawRect(
      Rect.fromPoints(
        rectangle.topLeft,
        rectangle.topLeft + Offset(rectangle.width, rectangle.height),
      ),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
