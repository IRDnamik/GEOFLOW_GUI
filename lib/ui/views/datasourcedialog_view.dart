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
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(left: 0.0, right: 0.0),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: ,
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                          const Text("Posgresql Database")
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

// class CustomDialog extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
//       elevation: 0.0,
//       backgroundColor: Colors.transparent,
//       child: dialogContent(context),
//     );
//   }

//   Widget dialogContent(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(left: 0.0, right: 0.0),
//       child: Stack(
//         children: <Widget>[
//           Container(
//             padding: EdgeInsets.only(
//               top: 18.0,
//             ),
//             margin: EdgeInsets.only(top: 13.0, right: 8.0),
//             decoration: BoxDecoration(
//                 color: Colors.red,
//                 shape: BoxShape.rectangle,
//                 borderRadius: BorderRadius.circular(16.0),
//                 boxShadow: <BoxShadow>[
//                   BoxShadow(
//                     color: Colors.black26,
//                     blurRadius: 0.0,
//                     offset: Offset(0.0, 0.0),
//                   ),
//                 ]),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: <Widget>[
//                 SizedBox(
//                   height: 20.0,
//                 ),
//                 Center(
//                     child: Padding(
//                   padding: const EdgeInsets.all(10.0),
//                   child: new Text("Sorry please try \n again tomorrow",
//                       style: TextStyle(fontSize: 30.0, color: Colors.white)),
//                 ) //
//                     ),
//                 SizedBox(height: 24.0),
//                 InkWell(
//                   child: Container(
//                     padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.only(
//                           bottomLeft: Radius.circular(16.0),
//                           bottomRight: Radius.circular(16.0)),
//                     ),
//                     child: Text(
//                       "OK",
//                       style: TextStyle(color: Colors.blue, fontSize: 25.0),
//                       textAlign: TextAlign.center,
//                     ),
//                   ),
//                   onTap: () {
//                     Navigator.pop(context);
//                   },
//                 )
//               ],
//             ),
//           ),
//           Positioned(
//             right: 0.0,
//             child: GestureDetector(
//               onTap: () {
//                 Navigator.of(context).pop();
//               },
//               child: Align(
//                 alignment: Alignment.topRight,
//                 child: CircleAvatar(
//                   radius: 14.0,
//                   backgroundColor: Colors.white,
//                   child: Icon(Icons.close,
//                       color: Color.fromARGB(255, 100, 3, 100)),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

//                 // <String>(
//                 //   context: context,
//                 //   builder: (BuildContext context) => AlertDialog(
//                 //     title: Column(
//                 //       crossAxisAlignment: CrossAxisAlignment.start,
//                 //       children: [
//                 //         Row(
//                 //           children: [
//                 //             const Spacer(),
//                 //             IconButton(
//                 //                 onPressed: () =>
//                 //                     Navigator.pop(context, 'Cancel'),
//                 //                 icon: const Icon(
//                 //                   Icons.cancel,
//                 //                   color: Colors.grey,
//                 //                 )),
//                 //           ],
//                 //         ),
//                 //         Row(
//                 //           children: const [
//                 //             Text('Select Data sources',
//                 //                 textAlign: TextAlign.left),
//                 //             Spacer()
                //           ],
                //         ),
                //       ],
                //     ),
                //     actions: <Widget>[
                //       Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //         children: [
                //           GestureDetector(
                //               onTap: () {}, // redirect  to pick directory
                //               child: Image.asset('assets/files.png',
                //                   width: 128, height: 128)),
                //           GestureDetector(
                //               onTap: () {}, // redirect  to pick directory
                //               child: Image.asset('assets/gdrive.png',
                //                   width: 108, height: 108)),
                //           GestureDetector(
                //               onTap: () {}, // redirect  to DB connection
                //               child: Image.asset('assets/pgsql.png',
                //                   width: 128, height: 128)),
                //         ],
                //       ),
                //     ],
                //   ),
                // );