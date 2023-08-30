import 'dart:convert';
import 'dart:developer';
import 'package:flutter_application_1/common/smakebar.dart';
import 'package:flutter_application_1/controller/service/endpoints.dart';
import 'package:http/http.dart'as http;
import '../../model/GetAPI_model.dart';

class API_Manager{
static GetAPI(context)async{
try{
var url = Uri.parse(endpoint);
var responce = await http.get(url);
var res = jsonDecode(responce.body);
var data = GetApiModel.fromJson(res);
print(data);
if(data != null)
return data;
else{
  showSnack(context, "data is null");
}
showSnack(context, res["message"],isSuccess: true);
}catch(e){
  showSnack(context, e.toString());
}
}
}