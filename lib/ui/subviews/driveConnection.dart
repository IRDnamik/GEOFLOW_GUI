import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class NewDriveConnection extends StatefulWidget {
  const NewDriveConnection({super.key});

  @override
  State<NewDriveConnection> createState() => _NewDriveConnectionState();
}

class _NewDriveConnectionState extends State<NewDriveConnection> {
  final _formKey = GlobalKey<FormState>();
  String label = "Gmail Adress";
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Google Drive connection settings"),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [Text("data"), Text("data")],
      )
    ]));
  }
}
