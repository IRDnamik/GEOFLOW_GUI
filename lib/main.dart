/*The code in this project is licensed under the Creative Commons license and was developed by Namik SCHERZL*/
import 'package:flutter/material.dart';
import 'package:geoflow_gui/ui/views/main_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Geoflow input generator', home: MainPage());
  }
}
