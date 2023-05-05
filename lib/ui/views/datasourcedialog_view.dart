import 'package:flutter/material.dart';
import 'package:geoflow_gui/services/process.dart';
import 'package:geoflow_gui/ui/color.dart';

class DatasourceDialog extends StatelessWidget {
  final process = Process();

  DatasourceDialog({super.key});

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
      constraints: BoxConstraints(maxWidth: 400),
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
                    textAlign: TextAlign.left,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        process.selectDirectory();
                      }, // redirect  to pick directory
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset('assets/files.png',
                              width: 84, height: 84),
                          const Text("Directory")
                        ],
                      )),
                  GestureDetector(
                      onTap: () {}, // Google drive access
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset('assets/gdrive.png',
                              width: 84, height: 84),
                          const Text("Google Drive")
                        ],
                      )),
                  GestureDetector(
                      onTap: () {}, //Set Database connection
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset('assets/pgsql.png',
                              width: 84, height: 84),
                          const Text("Posgresql \nDatabase")
                        ],
                      )),
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
