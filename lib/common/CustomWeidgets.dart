import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../uttils/consts.dart';

Widget CustomText({
  var text,
  var fontSize,
  var fontWeight,
  var color,
}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
       
      ),
    ),
  );
}

Widget CustomButton(
  
{  
  var text,
  var height ,
   var fontcolor,
  var color,
  var onPressed}
){
  return  Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: color,
              ),
              height: height,
            width: 200,
              child: TextButton(
                onPressed: 
                onPressed,
               
                child: CustomText(text: text,fontSize: 20,fontWeight: FontWeight.bold,color: fontcolor)
              ),
            ),
  );
}


Widget CustomTextFeild(var heading,var controller, {isObsecure = false}) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: MyColors.white,
      ),
      width: double.infinity,
      padding: EdgeInsets.all(20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          height: 18,
          child: TextField(
            controller:  controller,
            obscureText: isObsecure,
            decoration: InputDecoration(
              hintText:heading,
              border: InputBorder.none,
            ),
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        )
      ]),
    ),
  );
}
Widget CustomContainer(){

  return Container(
    height: double.infinity,width: double.infinity,
decoration: BoxDecoration(image: DecorationImage(image:  NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDDhaJB0U2km_YppwpJXLyTtyxnDUqX47f6A&usqp=CAU"),fit: BoxFit.fill))

  );
   }



