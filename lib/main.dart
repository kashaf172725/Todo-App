import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
           theme: ThemeData(primarySwatch: Colors.deepPurple,fontFamily: "Roboto-Regular"),
           home: HomeScreen() 
      
    );
    
    
  }
}

