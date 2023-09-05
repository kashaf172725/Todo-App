

import 'package:flutter/material.dart';

import '../../common/smakebar.dart';
import '../../model/signupModel.dart';
import '../../view/loginScreen.dart';
import '../service/api_manager.dart';


class signupProvider extends ChangeNotifier {
  bool isloading = false;
  signup(context, {email, password,name}) async {
    isloading = true;
    notifyListeners();
    if (email.isEmpty) {
      showSnack(context, "please enter email");
    } else if (password.isEmpty) {
      showSnack(context, "please enter password");
    }
    else{
     var body = { "email": email,"name": name, "password": password};
    Signupmodel res = await ApiManager.sinup(context, body);
    if (res.statusCode == 200) {
      Navigator.pushAndRemoveUntil(context,  MaterialPageRoute(builder: (context) =>LoginScreen ()), (route) => false);    }
    
    
    }
    isloading = false;
    notifyListeners();
    }

  }

