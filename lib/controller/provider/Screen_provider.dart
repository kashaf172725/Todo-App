
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/service/api_manager.dart';

import '../../model/GetAPI_model.dart';

class Providerclass extends ChangeNotifier{
  bool isloading = false; 
    GetApiModel? playlist;
ScreenProvider(context)async{
isloading = true;
notifyListeners();
playlist =await API_Manager.GetAPI(context);
print(playlist);

isloading = false;
notifyListeners();
}
}