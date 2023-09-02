import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/CustomWeidgets.dart';

import '../../uttils/consts.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.lightblue,
      appBar: AppBar(
        title: CustomText(text: "A B O U T - U S", color: MyColors.white),
        // elevation: 0,
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
child:Image(image: AssetImage("images/background.jpeg"),height: double.infinity,width: double.infinity,fit: BoxFit.fill,) ,
          ),Padding(
        padding: const EdgeInsets.all(60.0),
        child: CustomText(
          fontSize: 25,
            text:
                "We believe that everyone can achieve their goals, and our to-do app is here to help you stay organized and motivated."+
                "\n\nOur app is simple to use, but powerful enough to help you manage your life. With our app, you can create lists, set reminders, and track your progress"+
               "\n\nWe're committed to providing you with the best possible experience. That's why we're constantly adding new features and improvements to our app."+
                "\n\nWe're here to help you succeed. If you have any questions or feedback, please don't hesitate to contact us."),
      ),]));
  
  }
}
