/*
import '../uttils/consts.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
  
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body:Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    child: Center(
                      child: Container(
                        
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Image.asset(
                                'assets/images/locksmith.png',
                                scale: 1,
                              ),
                            ),
                           
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
                                  color: MyColors.black,),
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
                                    
                                    },
                                    icon: Icon(
                                     
                                          Icons.visibility_off,
                                      color:MyColors.black,
                                    ))),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 25.0, horizontal: 15),
                              child: Container(
                                height: 45,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color:MyColors.black,
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    
                                  },
                                  child: Text(
                                    "Log In",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: MyColors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
        )
    
    );

  }
}

Widget feild(var text, var lable, controller,
    {var isObsecure = false, suffix}) {
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w800,
              fontFamily: "Roboto Regular",
              decorationColor: MyColors.black),
        ),
        TextField(
          cursorColor: MyColors.black,
          controller: controller,
          obscureText: isObsecure,
          decoration: InputDecoration(
              suffixIcon: suffix,
              hintText: lable,
              // border: InputBorder.none,
              focusedBorder: InputBorder.none,
              hintStyle: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Roboto Regular",
                  decorationColor: MyColors.black,)),
        ),
        SizedBox(
          height: 30,
        )
      ],
    ),
  );
}
*/




import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/menu.dart';
import '../uttils/consts.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.brown,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(children: [
              Container(
                width: double.infinity,
                height: 200,
                color: MyColors.brown,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(onPressed: (){
                        Navigator.push(context,
                              CupertinoPageRoute(builder: (_) => Menu()));
                    }, icon: Icon(Icons.arrow_back_ios)),
                   
                    Center(
                      child: Image(
                        image: NetworkImage(
                            "https://cdn-icons-png.flaticon.com/512/6681/6681204.png"),
                        height: 100,
                        width: 100,
                      ),
                    ),
                  ],
                ),
              ), 
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height-200,
                decoration: BoxDecoration(
                    color: MyColors.lightbrown,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                    )),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: MyColors.brown,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      box("Email"),
                      box('Password', isObsecure: true),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        margin: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: MyColors.brown,
                        ),
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(context,
                                CupertinoPageRoute(builder: (_) => Menu()));
                          },
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: <Widget>[
                          const Text("Don't have any account?"),
                          TextButton(
                            child: const Text(
                              'Sign up',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: MyColors.brown,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (_) => Menu()));
                            },
                          )
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                    ]),
              )
            ]),
          ],
        ),
      ),
    );
  }
}

Widget box(var heading, {isObsecure = false}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      width: double.infinity,
      padding: EdgeInsets.all(20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          heading,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          height: 20,
          child: TextField(
            obscureText: isObsecure,
            decoration: InputDecoration(
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
