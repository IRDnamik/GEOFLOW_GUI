import 'package:flutter/material.dart';

class Diagramme {
  Widget buildBox(String text, VoidCallback onPressed) {
    if (text == 'Geoflow') {
      return Stack(children: <Widget>[
        ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white.withOpacity(0.0),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            side: BorderSide(color: Colors.white.withOpacity(0.5), width: 2),
            elevation: 10,
          ),
          child: Container(
            width: 150,
            height: 50,
            child: Center(
              child: Text(
                text,
                style: const TextStyle(fontSize: 18.0, color: Colors.white),
              ),
            ),
          ),
        ),
        const Positioned(top: 0, right: 2, child: Icon(Icons.settings, color: Colors.white, size: 32))
      ]);
    } else {
      return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white.withOpacity(0.0),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          side: BorderSide(color: Colors.white.withOpacity(0.5), width: 2),
          elevation: 10,
        ),
        child: SizedBox(
          width: 150,
          height: 50,
          child: Center(
            child: Text(
              text,
              style: const TextStyle(fontSize: 18.0, color: Colors.white),
            ),
          ),
        ),
      );
    }
  }
}
