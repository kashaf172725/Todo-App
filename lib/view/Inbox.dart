import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/CustomWeidgets.dart';

import '../../uttils/Todo_task.dart';
import '../../uttils/consts.dart';
import '../../uttils/dialogBox.dart';

class InboxScreen extends StatefulWidget {
  const InboxScreen({super.key});

  @override
  State<InboxScreen> createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {
  final _controller = TextEditingController();

//list of todo tiles
  List TodoList = [
    [
      "Do exersice",
      false,
    ],
    [
      "Do breakfast",
      false,
    ],
  ];
//check box was tapped
  void checkBoxchanged(bool? value, int index) {
    setState(() {
      TodoList[index][1] = !TodoList[index][1];
    });
  }


    void saveNewTask() {
    debugger();
    setState(() {
       
      TodoList.add([_controller.text, false]);
      Navigator.of(context).pop();
    });
  }

//create new task
  void creatNewTask() {
    showDialog(
        context: context,
        builder: (context) {
         
          return DialogBox(controller: _controller,  onSave: saveNewTask
          );
        });
  }



//delete task
  void deleteTask(int index) {
    setState(() {
      TodoList.removeAt(index);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: creatNewTask,
        child: Icon(Icons.add),
      ),
      backgroundColor: MyColors.lightyellow,
      appBar: AppBar(
        title: CustomText(
          text: "Inbox",
        ),
        // elevation: 0,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: TodoList.length,
        itemBuilder: (context, index) {
          return Todo_Task(
              deleteFunction: (context) => deleteTask,
              taskname: TodoList[index][0],
              taskCompleted: TodoList[index][1],
              onChanged: (value) {
                checkBoxchanged(value, index);
              });
        },
      ),
    );
  }
}
