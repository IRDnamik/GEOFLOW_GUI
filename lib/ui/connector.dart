import 'package:flutter/material.dart';

class _ConnecteursPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white.withOpacity(0.5)
      ..strokeWidth = 5.0
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final path = Path();

    // Début du connecteur à gauche de Geoflow
    path.moveTo(0, size.height / 2);

    // Premier point de contrôle
    path.quadraticBezierTo(
      size.width / 4,
      size.height / 4,
      size.width / 2,
      size.height / 4,
    );

    // Deuxième point de contrôle
    path.quadraticBezierTo(
      3 * size.width / 4,
      size.height / 4,
      size.width,
      size.height / 2,
    );

    // Fin du connecteur à droite de Geoflow
    path.moveTo(size.width, size.height / 2);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
