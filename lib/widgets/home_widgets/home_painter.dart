import 'dart:math';
import 'package:flutter/material.dart';
import 'package:task_3/constants/constants3.dart';
// ignore: depend_on_referenced_packages
import 'package:vector_math/vector_math.dart' as math;

class HomePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    assert(size.height == size.width);
    final w = size.width;
    final center = Offset(w / 2, w / 2);
    final rect1 = Rect.fromCenter(center: center, width: w, height: w);

    // first Grey circular progress
    final paint1 = _getPaint(Colors.grey[200]!);
    final path1 = Path();
    path1.addArc(rect1, math.radians(0), math.radians(270));
    canvas.drawPath(path1, paint1);

    // first pink circular progress
    final paint2 = _getPaint(secondaryColor);
    final path2 = Path();
    path2.addArc(rect1, math.radians(285), math.radians(60));
    canvas.drawPath(path2, paint2);

    // white CirclePointer
    final paint3 = Paint()..color = Colors.white;
    final x3 = center.dx + w / 2 * cos(math.radians(286));
    final y3 = center.dy + w / 2 * sin(math.radians(286));
    final center3 = Offset(x3, y3);
    canvas.drawCircle(center3, 9.4, paint3);

    // inner black circular-progress
    final paint4 = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = .8
      ..color = Colors.grey[850]!;
    final rect4 =
        Rect.fromCenter(center: center, width: w - 40, height: w - 40);
    final path4 = Path();
    path4.addArc(rect4, math.radians(0), math.radians(360));
    canvas.drawPath(path4, paint4);
  }

  Paint _getPaint(Color color) => Paint()
    ..strokeWidth = 22
    ..color = color
    ..strokeCap = StrokeCap.round
    ..style = PaintingStyle.stroke;

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
