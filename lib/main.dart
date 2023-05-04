import 'package:flutter/material.dart';
import './ui/diagram';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flow Graph Example', home: MainPage());
  }
}

class MainPage extends StatelessWidget {
  var diagram = Diagramme();

  MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 31, 29, 29),
                Color.fromARGB(255, 36, 4, 49),
                Color.fromARGB(255, 31, 29, 29)
              ]),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              diagram.buildBox('Input'),
              const Spacer(),
              diagram.buildBox('Geoflow'),
              const Spacer(),
              diagram.buildBox('Output'),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

//   Widget _buildGeoflow() {
//     return Container(
//       width: 100.0,
//       height: 100.0,
//       child: CustomPaint(
//         painter: _ConnecteursPainter(),
//         child: Container(
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(10.0),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey.withOpacity(0.5),
//                 spreadRadius: 2,
//                 blurRadius: 5,
//                 offset: const Offset(0, 3),
//               ),
//             ],
//           ),
//           child: const Center(
//             child: Text(
//               'Geoflow',
//               style: TextStyle(fontSize: 18.0),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


