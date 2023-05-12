import 'package:flutter/material.dart';

extension OutlineExtension on Container {
  Container withOutline({bool outline = false, double width = 1.0, Color color = Colors.black}) {
    if (outline) {
      return Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: color,
            width: width,
          ),
        ),
        child: this,
      );
    } else {
      return this;
    }
  }
}
