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

Widget CustomContainer({ taskname,var onTap}){

  return Padding(
        padding: const EdgeInsets.only(top: 25.0, left: 25, right: 25),
        child: InkWell(
          onTap: onTap,
          child: Container(
              padding: EdgeInsets.all(24),
              child: Row(
                children: [
                  Text(
                    taskname,
                   
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  color: MyColors.Yellow,
                  borderRadius: BorderRadius.circular(12)),
            ),
        ),
        );
   }



