

import 'package:flutter/material.dart';

import '../../common/CustomWeidgets.dart';
import '../../uttils/consts.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
        title: CustomText(text: "S E T T I N G - S C R E E N", color: MyColors.white),
        // elevation: 0,
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
child:Image(image: AssetImage("images/background.jpeg"),height: double.infinity,width: double.infinity,fit: BoxFit.fill,) ,
          ),
          Padding(
        padding: const EdgeInsets.all(60.0),
        child: CustomText(
          fontSize: 25,
            text:"  "
               ),
      ),])
        
      ),
    );
  }
}
