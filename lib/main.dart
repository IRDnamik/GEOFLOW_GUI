import 'package:flutter/material.dart';
import 'package:geoflow_gui/services/process.dart';
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
  final diagram = Diagramme();
  final process = Process();
  String? selectedDir;

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
              diagram.buildBox('Input', () {
                process.selectDirectory();
              }), // open file explorer
              const Spacer(),
              Container(),
              const SizedBox(height: 20),
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
