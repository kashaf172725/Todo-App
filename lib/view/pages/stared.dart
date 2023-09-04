

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/uttils/preferences.dart';

import '../../common/CustomWeidgets.dart';
import '../../uttils/Todo_task.dart';
import '../../uttils/consts.dart';

class StaredScreen extends StatefulWidget {
  const StaredScreen({super.key});

  @override
  State<StaredScreen> createState() => _StaredScreenState();
}

class _StaredScreenState extends State<StaredScreen> {
@override
  void initState() {
   getItem();
    super.initState();
  }
var itemData;
   getItem()async{
  var data = await Preferences.getitem();
  if(data != null){
 itemData = data;
 setState(() {
   
 });
  }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: CustomText(
          text: "S T A R E D",
          color: MyColors.white
        ),
        // elevation: 0,
        centerTitle: true,
      ),
      body:itemData == null?Center(child: CustomText(text: "No task is stared",color: MyColors.brown,fontSize: 30)):Stack(
        children: [
          Container(
child:Image(image: AssetImage("images/background.jpeg"),height: double.infinity,width: double.infinity,fit: BoxFit.fill,) ,
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: ListView.builder(
        itemCount:itemData.length,
        itemBuilder: (context, index) {
          return !itemData[index]["important"] ?Container() : Todo_Task(
              taskname:itemData[index]["text"],
              taskCompleted:itemData[index]["check"],
              color: MyColors.red,
            onPressed:  () {
                     checkBoxchangedImportant(itemData[index]["important"], index);
                    },
             );
        },
      ),
    )])
    );
  }

    void checkBoxchangedImportant(bool? value, int index) {
    setState(() {
      itemData[index]["important"] = !itemData[index]["important"];
      Preferences.saveitem(itemData);
      getItem();
    });
  }
}