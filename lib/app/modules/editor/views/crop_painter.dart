import 'package:flutter/material.dart';

class CropPainter extends CustomPainter {
  CropPainter({
    required this.rectangle,
    required this.showGrid,
  });

  final Rect rectangle;
  final bool showGrid;

  @override
  void paint(Canvas canvas, Size size) {}

  void drawBackground(Canvas canvas, Size size) {
    final paint = Paint()..color = showGrid ? Colors.blue : Colors.pink;
    final margin = showGrid ? 0.0 : 1.0;

    canvas.drawPath(
      Path.combine(
        PathOperation.difference,
        Path()
          ..addRect(
            Rect.fromLTWH(
              -margin,
              -margin,
              size.width + margin * 2,
              size.height + margin * 2,
            ),
          ),
        Path()
          ..addRect(rectangle)
          ..close(),
      ),
      paint,
    );
  }

  void drawGrid(Canvas canvas, Size size) {
    const int gridSize = 3;
    final Paint paint = Paint()
      ..strokeWidth = 1
      ..color = Colors.white;

    for (int i = 1; i < gridSize; i++) {
      //  (px, py) are rectangle topLeft coordinates
      double py = rectangle.topLeft.dy + (rectangle.height / gridSize) * i;
      double px = rectangle.topLeft.dx + (rectangle.width / gridSize) * i;

      // draw vertical line
      canvas.drawLine(
        Offset(px, rectangle.topLeft.dy),
        Offset(px, rectangle.bottomLeft.dy),
        paint,
      );

      // draw horizontal line
      canvas.drawLine(
        Offset(rectangle.topLeft.dx, py),
        Offset(rectangle.topRight.dx, py),
        paint,
      );
    }
  }

  void drawBoundary(Canvas canvas, Size size) {
    const double width = 5;
    const double length = 20;
    final Paint paint = Paint()..color = Colors.white;

    //*** EDGE ***//

    // topLeft
    canvas.drawRect(
      Rect.fromPoints(
        rectangle.topLeft,
        rectangle.topLeft + Offset(width, length),
      ),
      paint,
    );

    canvas.drawRect(
      Rect.fromPoints(
        rectangle.topLeft,
        rectangle.topLeft + Offset(width, length),
      ),
      paint,
    );

    // topRight
    //canvas.drawRect(Rect.fromPoints(rectangle.topRight + Offset(0.0, length), rectangle.topRight  Offset()), paint)
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
