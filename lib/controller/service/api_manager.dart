import 'dart:convert';

import 'package:flutter_application_1/common/smakebar.dart';
import 'package:http/http.dart' as http;
import '../../model/LoginModel.dart';
import 'endpoint.dart';



class ApiManager{

static login(context,{email,password})async{
  try{
   var url = Uri.parse(BASE_URL + login_endpoint);
  var responce = await  http.post(url,body: {"email": email,"password":password});
    var res = jsonDecode(responce.body);
          showSnack(context, res["message"],isSuccess: true);
    //  return res;
    
    var temp =  Loginmodel.fromJson(res);
    if(temp != null)
     return temp;
     else{
      showSnack(context, "temp is null");
     }
    } catch (e) {
    showSnack(context, e.toString());
    }
    
  }


static sinup(context,body) async {
  
    try {
      var url = Uri.parse(BASE_URL + sinup_endpoint);
      var responce =
          await http.post(url, body: body);
      var res = jsonDecode(responce.body);
      showSnack(context, res["message"],isSuccess: true);
      print(responce.body);
      var temp = Signupmodel.fromJson(res);
      if (temp != null)
      return temp;
       else{
      showSnack(context, "temp is null");
     }
      
    } catch (e) {
    showSnack(context, e.toString());
    }
    
  }
}