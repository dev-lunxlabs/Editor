import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../editor/controllers/editor_controller.dart';
import '../controllers/timeline_controller.dart';

class TimelineView extends GetView<TimelineController> {
  const TimelineView({
    Key? key,
    required this.editorController,
  }) : super(key: key);
  final EditorController editorController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: const Text('TimelineView'),
          centerTitle: true,
        ),
        body: ClipPath(
          clipper: openClipper(),
          child: Container(
            height: 300,
            width: 300,
            color: Colors.teal,
          ),
        ));
  }
}

class OpenPainter extends CustomPainter {
  Offset offsetR = const Offset(30, 60);
  Size sizeR = const Size(300, 200);
  Color colorR = Colors.pink;

  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = colorR
      ..style = PaintingStyle.fill;

    canvas.drawRect(offsetR & sizeR, paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

class openClipper extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    var controlPoint = Offset(size.width/2, size.height/2);
    var endPoint = Offset(size.width, size.height);

    Path path = Path()
      ..moveTo(size.width/2, 0)
      ..lineTo(0, size.height)
      ..quadraticBezierTo(controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
