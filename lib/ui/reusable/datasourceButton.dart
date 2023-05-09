import 'package:flutter/material.dart';
import 'package:geoflow_gui/extension/string.dart';
import 'package:geoflow_gui/services/process.dart';

import '../views/connectionSettings_view.dart';

class DatasourceButton extends StatelessWidget {
  final String picture;
  final double size;
  final String buttonLabel;

  const DatasourceButton({
    required this.picture,
    required this.size,
    required this.buttonLabel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          switch (buttonLabel) {
            case 'Directory':
              // open directory
              Process().selectDirectory();
              Navigator.of(context).pop();
              break;
            case "Google Drive":
              // redirect to google view settings
              showDialog(context: context, builder: (BuildContext context) => const ConnectionSettingsView());
              break;
            case "Posgresql \nDatabase":
              // redirect to db settings view
              showDialog(context: context, builder: (BuildContext context) => const ConnectionSettingsView());
              break;
          }
        }, // redirect  to pick directory
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [Image.asset('assets/$picture.png', width: size, height: size), Text(buttonLabel.capitalize())],
        ));
  }
}
