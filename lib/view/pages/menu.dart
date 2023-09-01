import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/CustomWeidgets.dart';
import 'package:flutter_application_1/view/Inbox.dart';

import '../../uttils/Todo_task.dart';
import '../../uttils/consts.dart';
import '../../uttils/dialogBox.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
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
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
           padding: const EdgeInsets.only(top: 25.0, left: 25, right: 25),
            child: Column(
              children: [
                CustomContainer(taskname: "Inbox",onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> InboxScreen()));
                }),
                  CustomContainer(taskname: "Stared",onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> InboxScreen()));
                }),
                  CustomContainer(taskname: "Inbox",onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> InboxScreen()));
                }),
                  CustomContainer(taskname: "Inbox",onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> InboxScreen()));
                }),
              ],
            ),
          );
        },
      ),
    );
  }
}
