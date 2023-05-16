/*The code in this project is licensed under the Creative Commons license and was developed by Namik SCHERZL*/
import 'package:flutter/material.dart';
import 'package:geoflow_gui/services/dbmanager.dart';
import 'package:geoflow_gui/ui/views/main_view.dart';
import 'package:sqflite/sqflite.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Geoflow input generator', home: MainPage());
  }
}
