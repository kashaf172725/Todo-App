import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/Screen.dart';
import 'package:provider/provider.dart';

import 'controller/provider/Screen_provider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Providerclass()),
        
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: = false,
          //  theme: ThemeData(primarySwatch: Colors.deepPurple,fontFamily: "Roboto-Regular"),
           home: Screen(), 
      ),
    );
    
    
  }
}

