// import 'package:flutter/material.dart';
// import '../color.dart';
// import '../subviews/driveConnection.dart';
// import '../subviews/pgsqlConnection.dart';
// import '../subviews/savedDriveConnection.dart';
// import '../subviews/savedPgsqlConnection.dart';

// class ConnectionSettingsView extends StatefulWidget {
//   final String dataSource;
//   const ConnectionSettingsView(this.dataSource, {super.key});

//   @override
//   State<ConnectionSettingsView> createState() => _ConnectionSettingsViewState();
// }

// class _ConnectionSettingsViewState extends State<ConnectionSettingsView> {
//   connectionTypeWidget() {
//     switch (widget.dataSource) {
//       case "Google Drive":
//         return const NewDriveConnection();

//       case "Posgresql \nDatabase":
//         return const NewPgsqlConnection();
//     }
//   }

//   savedConnectionsWidget() {
//     switch (widget.dataSource) {
//       case "Google Drive":
//         return const SavedDriveConnection();

//       case "Posgresql \nDatabase":
//         return SavedPgsqlConnection();
//       // case "Posgresql \nDatabase":
//       //   return const SavedPgsqlConnection();
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
//       elevation: 0.0,
//       backgroundColor: const Color.fromARGB(255, 255, 255, 255),
//       child: Container(
//         constraints: BoxConstraints(maxHeight: 500, maxWidth: 800),
//         padding: const EdgeInsets.all(12),
//         child: Column(
//           children: [
//             // first block is for adding a news connection
//             connectionTypeWidget(),
//             //title
//             getSavedConnectionTitle(),
//             // second block list existant connections
//             savedConnectionsWidget()
//           ],
//         ),
//       ),
//     );
//   }

//   Container getSavedConnectionTitle() {
//     return Container(
//         margin: const EdgeInsetsDirectional.only(start: 40, top: 20),
//         child: Row(
//           children: const [Text("test", style: TextStyle(color: MyThemeColor.darkViolet, fontWeight: FontWeight.bold))],
//         ));
//   }
// }
import 'package:flutter/material.dart';
import '../color.dart';
import '../subviews/driveConnection.dart';
import '../subviews/pgsqlConnection.dart';
import '../subviews/savedDriveConnection.dart';
import '../subviews/savedPgsqlConnection.dart';

class ConnectionSettingsView extends StatefulWidget {
  final String dataSource;
  var key;
  ConnectionSettingsView(this.dataSource, {required this.key}) : super(key: key);
  // ConnectionSettingsView(this.dataSource, {required Key key}) : super(key: key);

  @override
  State<ConnectionSettingsView> createState() => _ConnectionSettingsViewState();
}

class _ConnectionSettingsViewState extends State<ConnectionSettingsView> {
  @override
  Widget build(BuildContext context) {
    final isGoogleDrive = widget.dataSource == "Google Drive";
    final isPgsqlDatabase = widget.dataSource == "Posgresql \nDatabase";

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      elevation: 0.0,
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      child: Container(
        constraints: const BoxConstraints(maxHeight: 500, maxWidth: 800),
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            // first block is for adding a news connection
            isGoogleDrive ? const NewDriveConnection() : const NewPgsqlConnection(),

            //title
            savedConnectionTitle(
                isGoogleDrive ? "Previous Google Drive Connection :" : "Previous Postgres connection :"),

            // second block list existant connections
            isGoogleDrive ? const SavedDriveConnection() : SavedPgsqlConnection(),
          ],
        ),
      ),
    );
  }

  Container savedConnectionTitle(String title) {
    return Container(
      alignment: AlignmentDirectional.centerStart,
      margin: const EdgeInsetsDirectional.only(start: 40, top: 20),
      child: Text(
        title,
        style: const TextStyle(color: MyThemeColor.darkViolet, fontWeight: FontWeight.bold),
      ),
    );
  }
}
