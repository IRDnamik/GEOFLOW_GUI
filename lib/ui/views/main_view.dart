/*The code in this project is licensed under the Creative Commons license and was developed by Namik SCHERZL*/

import 'package:geoflow_gui/services/process.dart';
import 'package:flutter/material.dart';
import 'package:geoflow_gui/ui/color.dart';
import 'package:geoflow_gui/ui/views/datasource_view.dart';
import '../reusable/diagram.dart';

class MainPage extends StatefulWidget {
  MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final diagram = Diagramme();

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
                showDialog(
                    context: context,
                    builder: (BuildContext context) => DatasourceDialog());

                // selectedDir = process.selectDirectory();
              }), // open file explorer
              const Spacer(),
              Align(
                  alignment: const Alignment(0, 0.1),
                  child: Container(
                    child: diagram.buildBox('Geoflow', () {}),
                  )), // open page to generate json file
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
