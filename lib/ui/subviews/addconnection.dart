import 'dart:math';

import 'package:flutter/material.dart';

class AddConnectionInput<T> extends StatefulWidget {
  const AddConnectionInput({super.key});

  @override
  State<AddConnectionInput> createState() => _AddConnectionInputState();
}

class _AddConnectionInputState extends State<AddConnectionInput> {
//get variable name

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Text("test"),
        Text("test"),
      ]),
    );
  }
}
 
//  @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: items.map((item) {
//         return Row(
//           children: [
//             Text(item),
//             SizedBox(width: 8.0),
//             Expanded(
//               child: TextField(
//                 onChanged: (value) {
//                   setState(() {
//                     values[item] = value;
//                   });
//                 },
//               ),
//             ),
//           ],
//         );
//       }).toList(),
//     );
//   }
// }