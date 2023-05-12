// ignore: file_names
import 'package:flutter/material.dart';
import 'package:geoflow_gui/extension/string.dart';
import 'package:geoflow_gui/model/dbsettings.dart';
import 'package:geoflow_gui/ui/color.dart';

import '../reusable/customForm.dart';
import '../reusable/errortype.dart';

class NewDriveConnection extends StatefulWidget {
  const NewDriveConnection({key});

  @override
  State<NewDriveConnection> createState() => _NewDriveConnectionState();
}

class _NewDriveConnectionState extends State<NewDriveConnection> {
  final _formKey = GlobalKey<FormState>();
  String? _email;
  final errorType = ErrorType();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.symmetric(horizontal: 20),
      child: Form(
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
            CustomForm(
              label: "Gmail Adress :",
              preLabel: "Enter your Gmail Adress :",
              validator: (value) {
                return errorType.checkInput(value);
              },
              onSaved: (value) {
                setState(() {
                  _email = value;
                });
              },
            ),
            Container(
                margin: EdgeInsets.only(left: 500, top: 10), // temporary
                child: ElevatedButton(
                  onPressed: () {
                    //save variable in object and database
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      print(_email);
                    }
                  },
                  child: const Text('Add'),
                ))
          ],
        ),
      ),
    );
  }
}
