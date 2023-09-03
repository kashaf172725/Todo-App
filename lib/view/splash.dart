import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/CustomWeidgets.dart';
import 'package:flutter_application_1/view/menu.dart';
import '../uttils/consts.dart';
import '../uttils/route.dart';




class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  startTimer() async {
    var _duration = Duration(seconds: 5);
    return Timer(_duration,  pushUntil(context, Menu()));
  }

  
  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: MyColors.white,
        child: Center(
          child: CustomText(text: "To Do App",color: MyColors.brown,fontSize: 40,fontWeight: FontWeight.bold),
          ),
        ),
      );
    
  }
}
