import 'package:flutter_application_1/view/signupScreen.dart';

import '../common/CustomWeidgets.dart';
import '../uttils/consts.dart';
import 'package:flutter/material.dart';

import 'menu.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool press = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
child:Image(image: AssetImage("images/background.jpeg"),height: double.infinity,width: double.infinity,fit: BoxFit.fill,) ,
          ),Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Sign in to continue",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Roboto Regular",
                      color: MyColors.brown,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  feild(
                    "Email",
                    "Enter your Email here",
                    emailController,
                  ),
                  feild("Password", "Enter your password here",
                      passwordController,
                      
                      suffix: IconButton(
                          onPressed: () {
                            setState(() {
                              press = !press;
                            });
                          },
                        
                          icon: Icon(
                            press ? Icons.visibility : Icons.visibility_off,
                            color: MyColors.brown,
                          )),
                            isObsecure: press?true:false,
                          ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: CustomButton(
                        fontcolor: Colors.white,
                          color: MyColors.brown,
                            height: 40,
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (_) => Menu())
                         );   },
                        
                        text: "LogIn",
                      ),
                  ),
                 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: "Already have an account? ",
                       fontSize: 18

                      ), TextButton(onPressed: (){
Navigator.push(context, MaterialPageRoute(builder: (_)=>SignUpScreen()));
                  }, child: CustomText(text: "SinUp",
                   color: MyColors.brown,
                   fontSize: 20,
                   fontWeight: FontWeight.bold
                  ))
                    ],
                  ),
                 
                ],
              ),
            ),
          ),
        ),
      ),
   ]) ))
    ;
  }
}
