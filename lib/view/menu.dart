import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/CustomWeidgets.dart';
import 'package:flutter_application_1/view/pages/Inbox.dart';
import 'package:flutter_application_1/view/pages/aboutUs.dart';
import 'package:flutter_application_1/view/pages/privacyScreen.dart';
import 'package:flutter_application_1/view/pages/settingScreen.dart';
import 'package:flutter_application_1/view/pages/stared.dart';

import '../uttils/Todo_task.dart';
import '../uttils/consts.dart';
import '../uttils/dialogBox.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  List MenueList = [
    ["Inbox", "All work list", InboxScreen(), Icon(Icons.inbox),MyColors.red],
    ["Stared", "Your favourite work", StaredScreen(), Icon(Icons.star_border),MyColors.purple],
    ["About us", "Learn to know about us", AboutUs(), Icon(Icons.people_alt_outlined),MyColors.black],
    ["Privacy", "Limitations", PrivacyScreen(), Icon(Icons.privacy_tip_sharp),MyColors.brown],
    ["Setting", " ", SettingScreen(), Icon(Icons.settings),MyColors.splashblue],


    //["Inbox", "All work list", InboxScreen(), Icon(Icons.inbox),MyColors.Blue],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: MyColors.lightblue,
      appBar: AppBar(
        title: CustomText(text: "TO DO", color: MyColors.white),
        // elevation: 0,
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
child:Image(image: AssetImage("images/background.jpeg"),height: double.infinity,width: double.infinity,fit: BoxFit.fill,) ,
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
               decoration: BoxDecoration(
                      color: MyColors.white,
                      borderRadius: BorderRadius.circular(12)),
              height: 500,
              width: double.infinity,
            
             
              child: ListView.builder(
                padding: EdgeInsets.all(25),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: Column(
                        children: [
                          CustomListTile(MenueList[index][0], MenueList[index][1],
                              context, MenueList[index][2], MenueList[index][3],
                              MenueList[index][4]),
                          Divider(),
                        ],
                      ));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
