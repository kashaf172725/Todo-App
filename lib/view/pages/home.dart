import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/CustomWeidgets.dart';

import '../../uttils/Todo_list.dart';
import '../../uttils/consts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
//list of todo tiles
List TodoList = [
  [ "Do exersice", false,],
  ["Do breakfast", false,],
];
//check box was tapped
void checkBoxchanged(bool? value,int index){
  setState(() {
TodoList[index][1] = !TodoList[index][1] ;
    
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.lightyellow,
      appBar: AppBar(
        title: CustomText(
          text: "TO DO",
        ),
        // elevation: 0,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: TodoList.length,
        itemBuilder: (context, index) {
          return Todo_Task(taskname: TodoList[index][0], taskCompleted: TodoList[index][1], onChanged:(value){
checkBoxchanged(value,index);
          });
        },
    
      ),
    );
  }
}
