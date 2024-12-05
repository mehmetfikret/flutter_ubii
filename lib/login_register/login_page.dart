import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_ubii/login_register/my_button_google.dart';
import 'package:flutter_ubii/login_register/my_button_sign.dart';
import 'package:flutter_ubii/login_register/mytextfile.dart';
import 'package:flutter_ubii/login_register/mytextfile_register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
   bool? rememberMe = false; 
  @override
  Widget build(BuildContext context) {
   
    return SafeArea(
      child: Scaffold(   
        body: Center(
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Color(0xFFF337255C),
                Color(0xFFFA076F9),
                Color(0xFFF7E49F8),
                Color(0xFFF37255C)
              ])
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 60,),
                  Text("Sign in", style: TextStyle(color: Colors.white, fontSize: 32),),
                  SizedBox(height: 20,),
                  MyTextFile2(
                        iconData: Icon(Icons.mail_outline, color: Colors.black45,),
                        //controller: emailController,
                        hintText: "abc@email.com",
                        obscureText: false,
                      ),
                  SizedBox(height: 20,),
                  MyTextFileRegister(
                        iconData: Icon(Icons.lock_outlined, color: Colors.black45,),
                        //controller: emailController,
                        hintText: "Your Password",
                        obscureText: true,
                      ),
                  SizedBox(height: 2,),
                 Padding(
                   padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                   child: Row(
                     children: [
                       Checkbox(                     
                         value: rememberMe,
                         activeColor: Colors.white,
                         checkColor: Colors.purple,
                         
                         onChanged: (newBool) {
                           setState(() {
                             rememberMe = newBool;
                           });
                         },
                       ),
                       Text('Remember Me', style: TextStyle(color: Colors.white, fontSize: 16),),                 
                     ],
                   ),
                 ),
                  SizedBox(height: 10,),
                  MyButton(
                        onTap: signUserIn,
                        message: "SIGN IN",
                      ),
                  SizedBox(height: 20,),
                  Text("OR", style: TextStyle(color: Colors.white),),
                  SizedBox(height: 20,),
                  MyButtonGoogle(onTap: signUserIn, message: ""),
                   SizedBox(height: 20,),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text(
                                "Don't have an account?",
                                style: TextStyle(color: Colors.white),
                              ),
                      SizedBox(width: 4,),
                              GestureDetector(
                            onTap: signUserIn,
                            child: const Text(
                              'Sign up',
                              style: TextStyle(
                                color: Colors.white54,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                     ],
                   ),
                          
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  signUserIn() {
  }
}