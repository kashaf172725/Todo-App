

import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/menu.dart';
import '../../common/smakebar.dart';
import '../../model/LoginModel.dart';
import '../../uttils/preferences.dart';
import '../service/api_manager.dart';

class loginProvider extends ChangeNotifier {
  bool isloading = false;
  login(context, {email, password}) async {
    if (email.isEmpty) {
      showSnack(context, "please enter email");
    } else if (password.isEmpty) {
      showSnack(context, "please enter password");
    }
    else{
    isloading = true;
    notifyListeners();
    Loginmodel? res = await ApiManager.login(context, email: email, password: password);
    print(res);
    if (res!.data != null) {
      Navigator.pushAndRemoveUntil(context,  MaterialPageRoute(builder: (context) =>Menu()), (route) => false);    }
    if(res.data!= null){
     await Preferences.saveitem(res.data!.accessToken);
 
    }
    isloading = false;
    notifyListeners();
    }

  }
}
