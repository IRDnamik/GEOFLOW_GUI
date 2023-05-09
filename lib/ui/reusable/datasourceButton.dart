import 'package:flutter/material.dart';

class DatasourceButton extends StatelessWidget {
  final String picture;
  final double size;
  final String buttonLabel;

  const DatasourceButton({
    required this.picture,
    required this.size,
    required this.buttonLabel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {}, // redirect  to pick directory
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/$picture.png', width: size, height: size),
            Text(buttonLabel)
          ],
        ));
  }
}
