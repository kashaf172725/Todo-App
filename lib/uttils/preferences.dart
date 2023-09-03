import 'dart:convert';
import 'dart:developer';

import 'package:shared_preferences/shared_preferences.dart';

class Preferences{
  static void saveitem(item)async{
var pref = await SharedPreferences.getInstance();
var data = await getitem();
if(data != null)
data.add(item);
else{
  data = [item];
}
  pref.setString("fav", jsonEncode(data));
  // print("data saved");
  // print(item);
  }


  static  getitem()async{
    var pref = await SharedPreferences.getInstance();
 var data =pref.getString("fav");
 if(data != null)
 return jsonDecode(data);
 
  }


  
static clearPreferences(index)async{
   var pref = await SharedPreferences.getInstance();
   pref.clear();
   getitem();
}

}