import 'package:flutter/material.dart';
import 'package:geoflow_gui/services/process.dart';
import 'package:geoflow_gui/ui/color.dart';
import 'package:geoflow_gui/ui/reusable/datasourceButton.dart';

class DatasourceDialog extends StatefulWidget {
  const DatasourceDialog({super.key});

  @override
  State<DatasourceDialog> createState() => _DatasourceDialogState();
}

class _DatasourceDialogState extends State<DatasourceDialog> {
  final process = Process();
  final bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      elevation: 0.0,
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      child: dialogContent(
        context,
      ),
    );
  }

  Widget dialogContent(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 400),
      padding: const EdgeInsets.all(12),
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(bottom: 20.0),
                child: const Text('Select Data Source :',
                    textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  DatasourceButton(picture: 'files', size: 64, buttonLabel: 'Directory'),
                  DatasourceButton(picture: 'gdrive', size: 58, buttonLabel: "Google Drive"),
                  DatasourceButton(picture: 'pgsql', size: 80, buttonLabel: "Posgresql \nDatabase")
                ],
              ),
            ],
          ),
          Positioned(
            right: 0.0,
            top: 0.0,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: const Align(
                alignment: Alignment.topRight,
                child: CircleAvatar(
                  radius: 14.0,
                  backgroundColor: Color.fromARGB(255, 158, 158, 158),
                  child: Icon(Icons.close, color: MyThemeColor.darkViolet),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
