import 'package:flutter/material.dart';
import 'package:flutter_application_1/uttils/consts.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../common/CustomWeidgets.dart';

class Todo_Task extends StatelessWidget {
  final String taskname;
  final bool taskCompleted;
  final Function(bool?)? onChanged;
  final Function()? onPressed;

  final Function(BuildContext)? deleteFunction;
  final dynamic color;
  
  Todo_Task({super.key,
    this.deleteFunction,
    required this.taskname,
    required this.taskCompleted,
    this.onChanged,
    this.onPressed,
     this.color,
    
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 25.0, left: 25, right: 25),
        child: Slidable(
        
          endActionPane: ActionPane(
            motion: StretchMotion(),
            children: [
              SlidableAction(
                
                onPressed: deleteFunction,
                icon: Icons.delete,
                borderRadius: BorderRadius.circular(12),
                backgroundColor: MyColors.red,
              ),
            ],
          ),
          child: Container(
            
            padding: const EdgeInsets.all(24),
            child: Row(
              children: [
                //check box
                Checkbox(
                    value: taskCompleted,
                    onChanged: onChanged,
                    activeColor: MyColors.black),

                //task name
                Text(
                  taskname,
                  style: TextStyle(
                    decoration: taskCompleted
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
                    fontSize: 20,
                  ),
                ),
                Spacer(),
              //stared
              IconButton(onPressed: onPressed,icon:Icon(Icons.star_border_outlined,),color: color,)
              
              ],
            ),
            decoration: BoxDecoration(
                color: MyColors.white,
                borderRadius: BorderRadius.circular(12)),
          ),
        ));
  }
}