import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:geoflow_gui/model/dbsettings.dart';

import '../subviews/addconnection.dart';

class ConnectionSettingsView extends StatefulWidget {
  const ConnectionSettingsView({super.key});

  @override
  State<ConnectionSettingsView> createState() => _ConnectionSettingsViewState();
}

class _ConnectionSettingsViewState extends State<ConnectionSettingsView> {
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
            AddConnectionInput<GdriveSetting>()
            // second block list existant connections
            // listview of mail or db
            // SelectConnection()
          ],
        ),
      ),
    );
  }
}
