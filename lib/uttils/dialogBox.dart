import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/common/CustomWeidgets.dart';
import 'package:flutter_application_1/uttils/consts.dart';

// class DialogBox extends StatelessWidget {
//   final controller;
//   VoidCallback onSave;
//   DialogBox({super.key, required this.controller, required this.onSave});

//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       backgroundColor: MyColors.lightblue,
//       content: Container(
//         height: 130,
//         child: Column(
//           children: [
//             TextField(
//                 controller: controller,
//                 decoration: InputDecoration(
//                     hintText: "Create new task", border: OutlineInputBorder())),
//             Row(
//               children: [
//                 CustomButton(
//                     height: 40,
//                     color: MyColors.Blue,
//                     onPressed: () {
                     
//                      onSave;
//                     },
//                     text: "Save",
//                     fontcolor: MyColors.black
                  
//                     ),
//                 SizedBox(
//                   width: 12,
//                 ),
//                 CustomButton(
//                     height: 40,
//                     color: MyColors.Blue,
//                     onPressed: () {
//                       Navigator.of(context).pop();
//                     },
//                     text: "Cancel",
//                     fontcolor: MyColors.black),
//               ],
//             )
//           ],
//         ),
//         decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
//       ),
//     );
//   }
// }



class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  DialogBox({super.key, required this.controller, required this.onSave});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: MyColors.lightblue,
      content: Container(
        height: 130,
        child: Column(
          children: [
            TextField(
                controller: controller,
                decoration: InputDecoration(
                    hintText: "Create new task", border: OutlineInputBorder())),
            Row(
              children: [
                CustomButton(
                    height: 40,
                    color: MyColors.Blue,
                    onPressed: () {
                      onSave();
                    },
                    text: "Save",
                    fontcolor: MyColors.black
                  
                    ),
                SizedBox(
                  width: 12,
                ),
                CustomButton(
                    height: 40,
                    color: MyColors.Blue,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    text: "Cancel",
                    fontcolor: MyColors.black),
              ],
            )
          ],
        ),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
