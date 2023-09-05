import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/provider/loginProvider.dart';
import 'package:flutter_application_1/view/loginScreen.dart';
import 'package:flutter_application_1/view/pages/Inbox.dart';
import 'package:flutter_application_1/view/menu.dart';
import 'package:flutter_application_1/view/pages/settingScreen.dart';
import 'package:provider/provider.dart';

import 'controller/provider/sinupProvider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>loginProvider()),
        ChangeNotifierProvider(create: (context)=>signupProvider()),

      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
             theme: ThemeData(primarySwatch: Colors.brown,),
            // home: SplashPage() 
           // home: Menu()
           home: LoginScreen(),
        
      ),
    );
    
    
  }
}

/*
"email":"arham@eygpttv.com",
"password":"12345678"


endpoints
manager
provider
main: multiprovider
model made
attach model
view : initstate + builder + place name in view from provider

*/

