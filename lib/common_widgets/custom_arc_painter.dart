import 'package:flutter/material.dart';
import 'package:trackizer/common/color_extention.dart';
import 'package:vector_math/vector_math.dart';

class CustomArcPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var rect = Rect.fromCircle(
      center: Offset(size.width / 2, size.height / 2),
      radius: size.width / 2,
    );

    var gradiantColor = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        // 1st
        TColor.secondary,

        // 2nd
        TColor.secondary50,

        // 3rd
        TColor.secondary,
      ],
    );

    // Paint
    Paint activePaint = Paint()..shader = gradiantColor.createShader(rect);
    activePaint.style = PaintingStyle.stroke;
    activePaint.strokeWidth = 12.0;
    activePaint.strokeCap = StrokeCap.round;

    // Paint Background
    Paint bckgroundPaint = Paint();
    bckgroundPaint.color = TColor.grey60.withAlpha(140);
    bckgroundPaint.style = PaintingStyle.stroke;
    bckgroundPaint.strokeWidth = 12.0;
    bckgroundPaint.strokeCap = StrokeCap.round;

    // Arc
    canvas.drawArc(rect, radians(135), radians(270), false, bckgroundPaint);
    canvas.drawArc(rect, radians(135), radians(236), false, activePaint);
  }

  @override
  bool shouldRepaint(CustomArcPainter oldDelegate) => false;
}
