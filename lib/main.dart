import 'package:flutter/material.dart';
import 'package:geoflow_gui/ui/views/main_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Geoflow input generator', home: MainPage());
  }
}

// class MainPage extends StatelessWidget {
//   final diagram = Diagramme();
//   final process = Process();
//   var selectedDir;

//   MainPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: null,
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//               colors: [
//                 MyThemeColor.darkGrey,
//                 MyThemeColor.darkViolet,
//                 MyThemeColor.darkGrey
//               ]),
//         ),
//         child: Center(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Spacer(),
//               diagram.buildBox('Input', () {
//                 showDialog<String>(
//                   context: context,
//                   builder: (BuildContext context) => AlertDialog(
//                     title: const Text('Select Data sources'),
//                     actions: <Widget>[
//                       GestureDetector(
//                           onTap: () {}, // redirect  to pick directory
//                           child: Image.asset('assets/pgsql.png',
//                               width: 128, height: 128)),
//                       GestureDetector(
//                           onTap: () {}, // redirect  to DB connection
//                           child: Image.asset('assets/pgsql.png',
//                               width: 128, height: 128)),
//                       TextButton(
//                         onPressed: () => Navigator.pop(context, 'Cancel'),
//                         child: const Text('Cancel'),
//                       ),
//                       // TextButton(
//                       //   onPressed: () => Navigator.pop(context, 'OK'),
//                       //   child: const Text('OK'),
//                       // ),
//                     ],
//                   ),
//                 );
//                 // selectedDir = process.selectDirectory();
//               }), // open file explorer
//               const Spacer(),
//               Align(
//                   alignment: const Alignment(0, 0.1),
//                   child: Container(
//                     child: diagram.buildBox('Geoflow', () {}),
//                   )), // open page to generate json file
//               const Spacer(),
//               diagram.buildBox(
//                   'Output', () {}), // open page to set url and password
//               const Spacer(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// showDialog(
//   context: context,
//   builder: (BuildContext context) {
//     String dataSource = "";
//     bool searchOnLocal = false;
//     return AlertDialog(
//       title: Text("Source de données"),
//       content: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Text("Comment souhaitez-vous accéder à vos données ?"),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     searchOnLocal = true;
//                   });
//                 },
//                 child: Text("Rechercher sur le poste"),
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     searchOnLocal = false;
//                   });
//                 },
//                 child: Text("Saisir l'adresse du serveur"),
//               ),
//             ],
//           ),
//           SizedBox(height: 20),
//           searchOnLocal
//               ? Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Text("Veuillez sélectionner le fichier contenant vos données"),
//                     ElevatedButton(
//                       onPressed: () async {
//                         var filePickerResult =
//                             await FilePicker.platform.pickFiles();
//                         if (filePickerResult != null) {
//                           setState(() {
//                             dataSource = filePickerResult.files.single.path!;
//                           });
//                         }
//                       },
//                       child: Text("Sélectionner un fichier"),
//                     ),
//                   ],
//                 )
//               : Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Text("Veuillez saisir l'adresse du serveur"),
//                     TextField(
//                       onChanged: (value) {
//                         dataSource = value;
//                       },
//                       decoration: InputDecoration(
//                         hintText: "Adresse du serveur",
//                       ),
//                     ),
//                   ],
//                 ),
//         ],
//       ),
//       actions: [
//         ElevatedButton(
//           onPressed: () {
//             Navigator.of(context).pop(dataSource);
//           },
//           child: Text("Valider"),
//         ),
//       ],
//     );
//   },
// );
