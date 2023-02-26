import 'dart:math';

import 'package:flutter/material.dart';


class ClockPainter extends CustomPainter {
  final DateTime dateTime;

  ClockPainter(this.dateTime);

  @override
  void paint(Canvas canvas, Size size) {
    double centerX = size.width / 2;
    double centerY = size.height / 2;
    Offset center = Offset(centerX, centerY);

    //SAAT HESAPLAMA
    // dateTime.hour * 30 çünkü 360/12 = 30
    // dateTime.minute * 0.5 each minute we want to turn our hour line a little
    double hourX = centerX +
        size.width * 0.3 * cos((dateTime.hour * 30 + dateTime.minute * 0.5) *pi / 180);

    double hourY = centerY +
        size.width * 0.3 * sin((dateTime.hour * 30 + dateTime.minute * 0.5) *pi / 180);

    //AKREP
    canvas.drawLine(center, Offset(hourX, hourY), Paint()
      ..color = Colors.white70
      ..style = PaintingStyle.stroke
      ..strokeWidth = 9);

    // dakika hesaplama
    double minX = centerX + size.width * 0.35 * cos((dateTime.minute * 6) * pi / 180);

    double minY = centerY + size.width * 0.35 * sin((dateTime.minute * 6) * pi / 180);


    //YELKOVAN
    canvas.drawLine(center, Offset(minX, minY), Paint()
      ..color = Colors.white70
      ..style = PaintingStyle.stroke
      ..strokeWidth = 7);


    //saniye hesaplayıcı
    // 0.4 çizgi uzunluğumuz
    // dateTime.second * 6 çünkü 360 / 6 = 6
    double secondX = centerX +
        size.width * 0.4 * cos((dateTime.second * 6) * pi / 180);
    double secondY = centerY +
        size.width * 0.4 * sin((dateTime.second * 6) * pi / 180);

    // saniye çizgisi
    canvas.drawLine(center, Offset(secondX, secondY), Paint()
      ..color = Colors.white70
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3);


    //ortadaki nokta
    Paint dotPainter = Paint()
      ..color = Color(0xFF313131);
    canvas.drawCircle(center, 24, Paint()
      ..color = Colors.white54);
    canvas.drawCircle(center, 20, dotPainter);
    canvas.drawCircle(center, 10, Paint()
      ..color = Colors.white54);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
