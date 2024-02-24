// Copyright Epic Games, Inc. All Rights Reserved.

import 'dart:math';

import 'package:flutter/material.dart';

class ApePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final bodyPaint = Paint()
      ..style = PaintingStyle.fill
      ..strokeWidth = 2.0
      ..color = Colors.black;

    // body
    final body = Path()
      ..moveTo(-68, 72)
      ..lineTo(-80, 176)
      ..lineTo(-44, 308)
      ..lineTo(0, 336)
      ..lineTo(44, 308)
      ..lineTo(80, 176)
      ..lineTo(68, 72);

    // legs (left & right)
    final legs = Path()
      ..moveTo(0, 72)
      ..lineTo(-28, 0)
      ..lineTo(-80, 0)
      ..lineTo(-68, 72)
      ..moveTo(0, 72)
      ..lineTo(28, 0)
      ..lineTo(80, 0)
      ..lineTo(68, 72);

    // arms (left & right)
    final arms = Path()
      ..moveTo(-65, 235)
      ..quadraticBezierTo(-220, 185, -145, 70)
      ..lineTo(-80, 80)
      ..quadraticBezierTo(-130, 145, -50, 170)
      ..close()
      ..moveTo(65, 235)
      ..quadraticBezierTo(220, 185, 145, 70)
      ..lineTo(80, 80)
      ..quadraticBezierTo(130, 145, 50, 170)
      ..close();

    final facePaint = Paint()
      ..style = PaintingStyle.fill
      ..strokeWidth = 2.0
      ..color = Colors.grey[300]!;

    final face = Path()
      ..addOval(Rect.fromCircle(center: const Offset(0, 252), radius: 36))
      ..addOval(Rect.fromCircle(center: const Offset(-14, 280), radius: 16))
      ..addOval(Rect.fromCircle(center: const Offset(14, 280), radius: 16));

    final organPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 6.0
      ..color = Colors.black;

    final organs = Path()
      // nose
      ..moveTo(-14, 256)
      ..lineTo(-6, 250)
      ..moveTo(14, 256)
      ..lineTo(6, 250)
      ..moveTo(-20, 230)
      ..quadraticBezierTo(20, 245, 20, 230);

    final eyePaint = Paint()
      ..style = PaintingStyle.fill
      ..strokeWidth = 6.0
      ..color = Colors.black;

    final eyes = Path() // eyes
      ..addArc(Rect.fromCircle(center: const Offset(-14, 280), radius: 6), 0, 4 * pi)
      ..addArc(Rect.fromCircle(center: const Offset(14, 280), radius: 6), 0, 4 * pi);

    canvas
      ..translate(170, 500)
      ..scale(1, -1)
      ..drawPath(body, bodyPaint)
      ..drawPath(legs, bodyPaint)
      ..drawPath(arms, bodyPaint)
      ..drawPath(face, facePaint)
      ..drawPath(eyes, eyePaint)
      ..drawPath(organs, organPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
