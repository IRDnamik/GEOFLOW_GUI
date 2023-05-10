import 'package:flutter/material.dart';
import 'package:geoflow_gui/ui/color.dart';

import '../reusable/customForm.dart';

class NewPgsqlConnection extends StatefulWidget {
  const NewPgsqlConnection({super.key});

  @override
  State<NewPgsqlConnection> createState() => _NewPgsqlConnectionState();
}

class _NewPgsqlConnectionState extends State<NewPgsqlConnection> {
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
                "Postgres Database connection settings",
                style: TextStyle(color: MyThemeColor.darkViolet, fontWeight: FontWeight.bold, fontSize: 20.0),
              )),
          const CustomForm(
            label: "Database name :",
            preLabel: "Database name",
          ),
          const CustomForm(
            label: "Host :",
            preLabel: "Adress of your postgres server",
          ),
          const CustomForm(
            label: "Port :",
            preLabel: "Database port",
          ),
          const CustomForm(
            label: "User :",
            preLabel: "Give user with Role having create permission",
          ),
          const CustomForm(
            label: "Password :",
            preLabel: "Related password for user",
          )
        ],
      ),
    );
  }
}
