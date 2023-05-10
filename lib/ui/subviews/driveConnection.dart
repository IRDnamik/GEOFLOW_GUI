// ignore: file_names
import 'package:flutter/material.dart';
import 'package:geoflow_gui/ui/color.dart';

import '../reusable/customForm.dart';

class NewDriveConnection extends StatefulWidget {
  const NewDriveConnection({super.key});

  @override
  State<NewDriveConnection> createState() => _NewDriveConnectionState();
}

class _NewDriveConnectionState extends State<NewDriveConnection> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: const EdgeInsets.symmetric(vertical: 15.0),
              child: const Text(
                "Google Drive connection settings",
                style: TextStyle(color: MyThemeColor.darkViolet, fontWeight: FontWeight.bold, fontSize: 20.0),
              )),
          const CustomForm(
            label: "Gmail Adress :",
            preLabel: "Enter your Gmail Adress :",
          )
        ],
      ),
    );
  }
}
