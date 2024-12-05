import 'package:flutter/material.dart';

class MyTextFileRegister extends StatelessWidget {
  
  //final controller;
  final String hintText;
  final bool obscureText;
  final Widget iconData;

   MyTextFileRegister({
    super.key,
    //required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.iconData
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(         
                         
                  //controller: controller,
                   obscureText: obscureText,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.remove_red_eye, color: Colors.black45,),
                    prefixIcon: iconData,
                      enabledBorder:  OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent)),
                          fillColor: Colors.white60,
                          filled: true,
                          hintText: hintText,
                          hintStyle: TextStyle(color:Colors.black45),
                          ),
                ),
              );
  }
}