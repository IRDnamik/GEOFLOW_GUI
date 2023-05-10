import 'package:flutter/material.dart';
import '../subviews/driveConnection.dart';
import '../subviews/pgsqlConnection.dart';

class ConnectionSettingsView extends StatefulWidget {
  final String dataSource;
  const ConnectionSettingsView(this.dataSource, {super.key});

  @override
  State<ConnectionSettingsView> createState() => _ConnectionSettingsViewState();
}

class _ConnectionSettingsViewState extends State<ConnectionSettingsView> {
  connectionTypeWidget() {
    switch (widget.dataSource) {
      case "Google Drive":
        return const NewDriveConnection();

      case "Posgresql \nDatabase":
        return const NewPgsqlConnection();
    }
  }

  // savedConnectionsWidget() {
  //   switch (widget.dataSource) {
  //     case "Google Drive":
  //       return const SavedDriveConnection();

  //     case "Posgresql \nDatabase":
  //       return const SavedPgsqlConnection();
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      elevation: 0.0,
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      child: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            // first block is for adding a news connection
            connectionTypeWidget(),
            // second block list existant connections
            // savedConnectionsWidget()
          ],
        ),
      ),
    );
  }
}
