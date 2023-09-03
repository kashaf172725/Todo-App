import 'package:flutter_application_1/common/smakebar.dart';
import 'package:flutter_application_1/view/menu.dart';

import '../common/CustomWeidgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../uttils/consts.dart';
import 'loginScreen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final f_name_controller = TextEditingController();
  final l_name_controller = TextEditingController();
  final email_controller = TextEditingController();
  final password_controller = TextEditingController();
  final confirmpassword_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColors.brown,
        body: Stack(children: [
          Container(
            child: Image(
              image: AssetImage("images/background.jpeg"),
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10.0, vertical: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (_) => LoginScreen()));
                            },
                            icon: Icon(Icons.arrow_back_ios)),
                        Text(
                          "Sign Up",
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 0,
                          width: 0,
                        )
                      ],
                    ),
                  ),
                  feild(
                    "First name",
                    "Enter here",
                    f_name_controller,
                  ),
                  feild("Last name", "Enter here", l_name_controller),
                  feild("E-mail", "Enter here", email_controller),
                  feild("Password", "Enter here", password_controller,
                      isObsecure: true),
                  feild(
                      "Confirm password", "Enter here", confirmpassword_controller,
                      isObsecure: true),
                  if (password_controller.text != confirmpassword_controller.text)
                    showSnack(context, "password not match"),
                    CustomButton(
                      fontcolor: Colors.white,
                        color: MyColors.brown,
                          height: 40,
                          onPressed: (){
                             if (password_controller.text != confirmpassword_controller.text)
                    showSnack(context, "Password not match");
                    else{
 Navigator.push(context, MaterialPageRoute(builder: (_) => Menu()) ); 
                    }

                           
                        },
                      
                      text: "SignUp",
                    ),
                 
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have any account?',
                          style: TextStyle(fontSize: 13),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (_) => LoginScreen()));
                            },
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: MyColors.brown),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ]));
  }
}
