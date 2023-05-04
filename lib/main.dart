import 'package:flutter/material.dart';
import './ui/color.dart';
import './ui/diagram';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flow Graph Example', home: MainPage());
  }
}

class MainPage extends StatelessWidget {
  var diagram = Diagramme();

  MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                MyThemeColor.darkGrey,
                MyThemeColor.darkViolet,
                MyThemeColor.darkGrey
              ]),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              diagram.buildBox('Input', () {}), // open file explorer
              const Spacer(),
              diagram.buildBox(
                  'Geoflow', () {}), // open page to generate json file
              const Spacer(),
              diagram.buildBox(
                  'Output', () {}), // open page to set url and password
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
