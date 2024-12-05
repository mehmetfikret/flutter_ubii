import 'package:flutter/material.dart';

class MyButtonGoogle extends StatelessWidget {
  const MyButtonGoogle({super.key, required this.onTap, required this.message});
  final Function()? onTap;
  final String message;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
  onTap: onTap,
  child: Container(
    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20), // Padding değerlerini azalttık
    margin: const EdgeInsets.symmetric(horizontal: 55),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/google.png', 
          width: 40, // Logo boyutunu küçülttük
          height: 40,
        ),
        SizedBox(width: 10), 
        Expanded(
          child: Text(
            "Login With Google",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.purple.shade700, fontWeight: FontWeight.bold, fontSize: 18), // Yazı boyutunu küçülttük
          ),
        ),
       
        
      ],
    ),
  ),
);
  }
}