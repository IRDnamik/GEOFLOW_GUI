import 'package:flutter/material.dart';
import 'package:geoflow_gui/ui/color.dart';

import '../reusable/customForm.dart';
import '../reusable/errortype.dart';

class NewPgsqlConnection extends StatefulWidget {
  const NewPgsqlConnection({super.key});

  @override
  State<NewPgsqlConnection> createState() => _NewPgsqlConnectionState();
}

class _NewPgsqlConnectionState extends State<NewPgsqlConnection> {
  final _formKey = GlobalKey<FormState>();
  String? _dbname;
  String? _host;
  String? _port;
  String? _user;
  String? _password;

  final errorType = ErrorType();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.symmetric(horizontal: 20),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: const EdgeInsets.symmetric(vertical: 15.0),
                child: const Text(
                  "Postgres Database connection settings",
                  style: TextStyle(color: MyThemeColor.darkViolet, fontWeight: FontWeight.bold, fontSize: 20.0),
                )),
            CustomForm(
                label: "Database name :",
                preLabel: "Database name",
                validator: (value) {
                  return errorType.checkDB(value);
                },
                onSaved: (value) {
                  setState(() {
                    _dbname = value;
                  });
                }),
            CustomForm(
                label: "Host :",
                preLabel: "Adress of your postgres server",
                validator: (value) {
                  return errorType.checkDB(value);
                },
                onSaved: (value) {
                  setState(() {
                    _host = value;
                  });
                }),
            CustomForm(
                label: "Port :",
                preLabel: "Database port",
                validator: (value) {
                  return errorType.checkDB(value);
                },
                onSaved: (value) {
                  setState(() {
                    _port = value;
                  });
                }),
            CustomForm(
                label: "User :",
                preLabel: "Give user with Role having create permission",
                validator: (value) {
                  return errorType.checkDB(value);
                },
                onSaved: (value) {
                  setState(() {
                    _user = value;
                  });
                }),
            CustomForm(
                label: "Password :",
                preLabel: "Related password for user",
                validator: (value) {
                  return errorType.checkDB(value);
                },
                onSaved: (value) {
                  setState(() {
                    _password = value;
                  });
                }),
            Container(
                margin: EdgeInsets.only(left: 500, top: 10), // temporary
                child: ElevatedButton(
                  onPressed: () {
                    //save variable in object and database
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      print(_dbname);
                      print(_host);
                      print(_port);
                      print(_user);
                      print(_password);
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
