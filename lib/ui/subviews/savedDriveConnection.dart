import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:geoflow_gui/extension/widget.dart';
import 'package:geoflow_gui/model/dbsettings.dart';

import '../color.dart';

class SavedDriveConnection extends StatefulWidget {
  const SavedDriveConnection({super.key});

  @override
  State<SavedDriveConnection> createState() => _SavedDriveConnectionState();
}

class _SavedDriveConnectionState extends State<SavedDriveConnection> {
  // get list of google drive adresses saved
  final List<GdriveSetting> googleMail = [
    GdriveSetting("namik.scherzl@gmail.com"),
    GdriveSetting("namik.scherzl@gmail.com"),
    GdriveSetting("namik.scherzl@gmail.com")
  ];
  // querying local db to retrieve adresses

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: EdgeInsetsDirectional.only(start: 40, top: 20),
            child: Row(
              children: [
                Text("Choose Gmail adress :",
                    style: TextStyle(color: MyThemeColor.darkViolet, fontWeight: FontWeight.bold))
              ],
            )),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 200),
            child: SizedBox(
              height: 50.0 * googleMail.length,
              child: CustomScrollView(
                slivers: [
                  SliverFixedExtentList(
                    itemExtent: 50,
                    delegate: SliverChildBuilderDelegate((context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 2),
                        child: OutlinedButton(
                            style: const ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(Colors.white),
                                elevation: MaterialStatePropertyAll(2)),
                            onPressed: null,
                            child: Row(children: [
                              Icon(Icons.email),
                              Container(
                                  margin: EdgeInsets.symmetric(horizontal: 20), child: Text(googleMail[index].email))
                            ])),
                      );
                    }, childCount: googleMail.length),
                  )
                ],
              ),
            )),
      ],
    );
  }
}
