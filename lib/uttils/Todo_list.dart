import 'package:flutter/material.dart';
import 'package:flutter_application_1/uttils/consts.dart';

import '../common/CustomWeidgets.dart';

class Todo_Task extends StatelessWidget {
  final String taskname;
  final bool? taskCompleted;
  final Function(bool?)? onChanged;

  Todo_Task({super.key,required this.taskname,required this.taskCompleted,required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:25.0,left: 25,right: 25),
      child: Container(
        padding: EdgeInsets.all(24),
      child:  Row(
        children: [
          //check box
          Checkbox(value: taskCompleted, onChanged: onChanged),
          //task name
          CustomText(text : taskname,fontSize: 20),
        ],
      ),
      decoration: BoxDecoration(
        color: MyColors.Yellow,
        borderRadius: BorderRadius.circular(12)
      ),
      ),
    );
  }
}