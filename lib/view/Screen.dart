import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/CustomWeidgets.dart';
import 'package:flutter_application_1/uttils/consts.dart';
import 'package:provider/provider.dart';
import '../controller/provider/Screen_provider.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});
  @override
  State<Screen> createState() => _ScreenState();
}
class _ScreenState extends State<Screen> {
  
   @override
  void initState() {
    getplaylistfunc();

    super.initState();
  }
  getplaylistfunc() {
    var provider = context.read< Providerclass>();
    provider.ScreenProvider(context);
  }
 
Widget build(BuildContext context) {
  var size = MediaQuery.of(context).size;
   return Scaffold(
    
    body: Builder(
      builder: (context) { 
        var provider = context.watch<Providerclass>();
       
        return provider.isloading
            ? Center(child: CircularProgressIndicator())
            : 
                Stack(
                  children: [
                    CustomContainer(),
 Container(
              height: double.infinity,
              width: double.infinity,
             //decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvH8jZL9jGL_Gp2CvrRjQlu6hxQdFe4hNifw&usqp=CAU")))
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Column(
          
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 
                 CustomText(text:  provider.playlist!.name,fontSize: 30,fontWeight: FontWeight.bold,color: MyColors.white)
               ,
              //  SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:15.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     CustomText(text: (provider.playlist!.main.temp - 273).toInt().toString(), fontSize: size.width > 540 ? 100 : 50,fontWeight: FontWeight.bold,color: MyColors.white),
                  CustomText(text: "°C",fontSize: size.width > 540 ? 80 : 40,fontWeight: FontWeight.w500,color: MyColors.white),
                  Spacer(),
                  CustomText(text:"Its cloudy",fontSize: 20,fontWeight: FontWeight.w500,color: MyColors.white),
                   ],
                               ),
                ),
           Spacer(),
              Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),),
              height: 200,width: double.infinity,
              child: Wrap(
                
                children: [
                  Column(
                  children: [
                    CustomText(text: "Humidity",fontSize: size.width > 400 ? 30 : 15,fontWeight: FontWeight.bold,color: MyColors.white),
                  CustomText(text: ( provider.playlist!.main.humidity).toString(),fontSize: size.width > 540 ? 20 : 10,fontWeight: FontWeight.bold,color: MyColors.white),
                  ],

                ),
                  size.width>540? SizedBox(width: 20,):SizedBox(width: 8,),
                  Column(
                    children: [
                      CustomText(text: "Pressure",fontSize: size.width > 400 ? 30 : 15,fontWeight: FontWeight.bold,color: MyColors.white),
                  CustomText(text: ( provider.playlist!.main.pressure).toString(),fontSize: size.width > 540 ? 20 : 10,fontWeight: FontWeight.bold,color: MyColors.white) , 
                    ],
                  ) , 
                  size.width>540? SizedBox(width: 20,):SizedBox(width: 8,),
                  Column(
                    children: [
                      CustomText(text:"Feels like",fontSize: size.width > 400 ? 30 : 15,fontWeight: FontWeight.bold,color: MyColors.white),
                 CustomText(text: ( provider.playlist!.main.feelsLike).toString(),fontSize: size.width > 540 ? 20 : 10,fontWeight: FontWeight.bold,color: MyColors.white)
                    ],
                  )
                  
                  ]
                  
              ),
               )
                
                
                ],),
             ),
            ),
                  ],
                );
           
      }
    ),
    );
  }
}