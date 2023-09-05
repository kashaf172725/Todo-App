import 'package:flutter_application_1/common/smakebar.dart';
import 'package:flutter_application_1/view/menu.dart';
import 'package:provider/provider.dart';

import '../common/CustomWeidgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../controller/provider/sinupProvider.dart';
import '../uttils/consts.dart';
import 'loginScreen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final name_controller = TextEditingController();
  final email_controller = TextEditingController();
  final password_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var pro = context.watch<signupProvider>();
   return pro.isloading ? Center(child: CircularProgressIndicator()):
     Scaffold(
        backgroundColor: MyColors.brown,
        body: Builder(
          builder: (context) {
            return Stack(children: [
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
                                   var provider = context.read<signupProvider>();
                                provider.signup(context,
                                    email: email_controller.text,
                                    name:name_controller.text,
                                     password: password_controller.text);
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
                        " name",
                        "Enter here",
                        name_controller,
                      ),
                      feild("E-mail", "Enter here", email_controller),
                      feild("Password", "Enter here", password_controller,
                          isObsecure: true),
                    
                     
                        CustomButton(
                          fontcolor: Colors.white,
                            color: MyColors.brown,
                              height: 40,
                              onPressed: (){
                               
 Navigator.push(context, MaterialPageRoute(builder: (_) => LoginScreen()) ); 
                        

                               
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
            ]);
          }
        ));
  }
}
