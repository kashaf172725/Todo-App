import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/CustomWeidgets.dart';
import 'package:flutter_application_1/uttils/preferences.dart';

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
    setState(() {
      TodoList.add([_controller.text, false]);

      Navigator.of(context).pop();
      _controller.clear();
    });
  }

//create new task
  void creatNewTask() {
    showDialog(
        context: context,
        builder: (
          context,
        ) {
          return DialogBox(controller: _controller, onSave: saveNewTask);
        });
  }

//delete task
  void deleteTask(
    int index,
  ) {
    setState(() {
      TodoList.removeAt(index);
    });
  }

  // checkfav(name) {
  //   if (itemData != null) {
  //     for (int i = 0; i < itemData; i++) {
  //       if (itemData[i][0] == name) {
        
  //         return true;
  //       } else {
  //         return false;
  //       }
        
  //     }
  //   }
  // }

  @override
  void initState() {
    // Preferences.saveitem(TodoList);
    getItem();
    super.initState();
  }

  var itemData;
  getItem() async {
    var res = await Preferences.getitem();
    if (res != null) {
      itemData = res;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: creatNewTask,
          child: Icon(Icons.add),
        ),
        // backgroundColor: MyColors.lightblue,
        appBar: AppBar(
          title: CustomText(text: "I N B O X", color: MyColors.white),
          // elevation: 0,
          centerTitle: true,
        ),
        body: Stack(children: [
          Container(
            child: Image(
              image: AssetImage("images/background.jpeg"),
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: ListView.builder(
              itemCount: TodoList.length,
              itemBuilder: (context, index) {
                return Todo_Task(
                    deleteFunction: (context) => deleteTask(index),
                    taskname: TodoList[index][0],
                    taskCompleted: TodoList[index][1],
                    // color: 
                    // checkfav(TodoList[index][0]) 
                    //     ?
                    //      MyColors.red
                    //     :
                    //      MyColors.grey,
                    onPressed: () {
                      Preferences.saveitem(TodoList[index]);
                      getItem();
                    },
                    onChanged: (value) {
                      checkBoxchanged(value, index);
                    });
              },
            ),
          )
        ]));
  }
}
