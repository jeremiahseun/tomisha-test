import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paintFill0 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;
    paintFill0.shader = ui.Gradient.linear(
        Offset(size.width * 0.00, size.height * 0.51),
        Offset(size.width * 1.00, size.height * 0.51),
        [const Color(0xFFE6FFFA), const Color(0xFFEBF4FF)],
        [0.00, 1.00]);

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0057692, size.height * 0.0189189);
    path_0.lineTo(size.width * 0.0346154, size.height * 0.0270270);
    path_0.lineTo(size.width * 0.0576923, size.height * 0.0351351);
    path_0.lineTo(size.width * 0.0884615, size.height * 0.0540541);
    path_0.lineTo(size.width * 0.1173077, size.height * 0.0648649);
    path_0.lineTo(size.width * 0.1519231, size.height * 0.0864865);
    path_0.lineTo(size.width * 0.1884615, size.height * 0.1135135);
    path_0.lineTo(size.width * 0.2250000, size.height * 0.1459459);
    path_0.lineTo(size.width * 0.2826923, size.height * 0.1810811);
    path_0.lineTo(size.width * 0.3403846, size.height * 0.1918919);
    path_0.lineTo(size.width * 0.3961538, size.height * 0.1918919);
    path_0.lineTo(size.width * 0.4019231, size.height * 0.1918919);
    path_0.lineTo(size.width * 0.4576923, size.height * 0.1972973);
    path_0.lineTo(size.width * 0.4942308, size.height * 0.1972973);
    path_0.lineTo(size.width * 0.5576923, size.height * 0.1918919);
    path_0.lineTo(size.width * 0.6288462, size.height * 0.1837838);
    path_0.lineTo(size.width * 0.6846154, size.height * 0.1621622);
    path_0.lineTo(size.width * 0.7423077, size.height * 0.1405405);
    path_0.lineTo(size.width * 0.7980769, size.height * 0.1162162);
    path_0.lineTo(size.width * 0.8500000, size.height * 0.0918919);
    path_0.lineTo(size.width * 0.8865385, size.height * 0.0729730);
    path_0.lineTo(size.width * 0.9211538, size.height * 0.0486486);
    path_0.lineTo(size.width * 0.9538462, size.height * 0.0270270);
    path_0.lineTo(size.width * 0.9826923, size.height * 0.0324324);
    path_0.lineTo(size.width * 1.0019231, size.height * 0.0540541);
    path_0.lineTo(size.width * 1.0019231, size.height * 0.8810811);
    path_0.lineTo(size.width * 0.9826923, size.height * 0.9135135);
    path_0.lineTo(size.width * 0.9653846, size.height * 0.9459459);
    path_0.lineTo(size.width * 0.9307692, size.height * 0.9675676);
    path_0.lineTo(size.width * 0.8980769, size.height * 0.9756757);
    path_0.lineTo(size.width * 0.8673077, size.height * 0.9783784);
    path_0.lineTo(size.width * 0.8076923, size.height * 0.9675676);
    path_0.lineTo(size.width * 0.7711538, size.height * 0.9594595);
    path_0.lineTo(size.width * 0.7326923, size.height * 0.9513514);
    path_0.lineTo(size.width * 0.6942308, size.height * 0.9459459);
    path_0.lineTo(size.width * 0.6557692, size.height * 0.9378378);
    path_0.lineTo(size.width * 0.6153846, size.height * 0.9297297);
    path_0.lineTo(size.width * 0.5692308, size.height * 0.9162162);
    path_0.lineTo(size.width * 0.5326923, size.height * 0.9081081);
    path_0.lineTo(size.width * 0.4961538, size.height * 0.8972973);
    path_0.lineTo(size.width * 0.4423077, size.height * 0.8783784);
    path_0.lineTo(size.width * 0.4096154, size.height * 0.8756757);
    path_0.lineTo(size.width * 0.3750000, size.height * 0.8567568);
    path_0.lineTo(size.width * 0.3403846, size.height * 0.8513514);
    path_0.lineTo(size.width * 0.2769231, size.height * 0.8513514);
    path_0.lineTo(size.width * 0.2346154, size.height * 0.8675676);
    path_0.lineTo(size.width * 0.1980769, size.height * 0.8810811);
    path_0.lineTo(size.width * 0.1596154, size.height * 0.8945946);
    path_0.lineTo(size.width * 0.1134615, size.height * 0.9135135);
    path_0.lineTo(size.width * 0.0788462, size.height * 0.9270270);
    path_0.lineTo(size.width * 0.0500000, size.height * 0.9486486);
    path_0.lineTo(size.width * 0.0230769, size.height * 0.9810811);
    path_0.lineTo(size.width * 0.0038462, size.height * 0.9945946);
    path_0.lineTo(size.width * 0.0057692, size.height * 0.0189189);
    path_0.close();

    canvas.drawPath(path_0, paintFill0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
