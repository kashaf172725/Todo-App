

import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/CustomWeidgets.dart';

import '../../uttils/consts.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.lightblue,
      appBar: AppBar(
        title: CustomText(text: "P R I V C Y - S C R E E N", color: MyColors.white),
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
            text:
                "We collect the following data about you: your name, email address, and the tasks you create. We use this data to provide you with the service and to improve our product."+
                "\n\nWe may share your data with third-party service providers who help us to provide the service, such as cloud storage providers. We will only share your data with third parties who have agreed to protect your privacy"+
               "\n\nWe use security measures to protect your data, such as encryption and access controls. We also have procedures in place to deal with any data breaches."+
                "\n\nYou can choose not to share your data with us by not creating an account or by deleting your account. You can also request that we delete your data at any time."),
      ),]));
  
  }
}
