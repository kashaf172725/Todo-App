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
      textAlign: TextAlign.center,
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
                  color: MyColors.Blue,
                  borderRadius: BorderRadius.circular(12)),
            ),
        ),
        );
   }

Widget CustomListTile(var title,var subtitle,context,var route,var icon,var iconColor){
  return ListTile(
              splashColor: MyColors.lightblue,
              leading: icon,
              iconColor:iconColor,
              hoverColor: MyColors.brown,
              title:Text(title) ,
              subtitle: Text(subtitle),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>route));
                });
}

