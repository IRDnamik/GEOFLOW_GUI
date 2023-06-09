import 'package:flutter/material.dart';
import 'package:geoflow_gui/model/dbsettings.dart';
import 'package:geoflow_gui/services/process.dart';

class SavedDriveConnection extends StatefulWidget {
  const SavedDriveConnection({super.key});

  @override
  State<SavedDriveConnection> createState() => _SavedDriveConnectionState();
}

class _SavedDriveConnectionState extends State<SavedDriveConnection> {
  // get list of google drive adresses saved
  // final List<GdriveSetting> googleMail = [
  //   GdriveSetting("namik.scherzl@gmail.com"),
  //   GdriveSetting("namik.scherzl@gmail.com"),
  //   GdriveSetting("namik.scherzl@gmail.com")
  // ];
  Process _controller = Process();

  // querying local db to retrieve adresses

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 200),
          child: SizedBox(
            height: 50.0 * _controller.gDriveConnections.length,
            child: ListView.builder(
              itemCount: _controller.gDriveConnections.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: OutlinedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      foregroundColor: MaterialStateProperty.all(Colors.grey),
                      elevation: MaterialStateProperty.all(2),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.add_to_drive),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(_controller.gDriveConnections[index].email),
                        ),
                      ],
                    ),
                    onPressed: () {
                      // set data source to google drive and quit dialog
                    },
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
