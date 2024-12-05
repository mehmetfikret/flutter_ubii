/*import 'package:flutter/material.dart';
import 'package:ubi/utils/custom_button.dart';

class ResetPasswordScreen extends StatefulWidget {
   ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  TextEditingController _emailController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Şifremi Unuttum")),
      body: Column(children: [
        
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 30),
          child: TextField(
            controller: _emailController,

            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
        ),
        CustomButton(label: 'Şifreyi Sıfırla', onPressed: () async {
          final String email=_emailController.text.trim();
          //await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
        }),
      ]),
    );
  }
}
*/

import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFF337255C),
                Color(0xFFFA076F9),
                Color(0xFFF7E49F8),
                Color(0xFFF37255C),
              ]),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
             Align(
              // Align widget'ını kullanarak sola dayalı yapın
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 30.0,), // Sadece sola padding ekleyin
                child: Text(
                  "Reset Password",
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xFFFEDE4FF),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              // Align widget'ını kullanarak sola dayalı yapın
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 30.0,), // Sadece sola padding ekleyin
                child: Text(
                  "Please enter your email address to request a \npassword reset",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFFFEDE4FF),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.transparent,
                  hintText: "abc@email.com",
                  hintStyle: TextStyle(
                    color: Color(0xFFF747678),
                  ),
                  prefixIcon: Icon(
                    Icons.mail_outline,
                    color: Color(0xFFF747678),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                      vertical: 20.0), // Yükseklik ayarlayın
                ),
              ),
              height: 56.0,
              width: 345.0, // Genişliği artırın
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            SizedBox(height: 40,),
            Container(
              child: TextField(
                onTap: () {
                  print("TIKLANDI");
                },
                enabled: true,
                textAlign: TextAlign.center,
                textAlignVertical: TextAlignVertical.bottom,
                decoration: InputDecoration(                  
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,                 
                    borderRadius: BorderRadius.circular(20)
                  ),
                  filled: true,
                  fillColor:  Colors.purple.shade800,
                  hintText: "SEND",
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 5,                 
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Icon(
                      Icons.arrow_circle_right,
                      color: Color(0xFFEDE4FF),
                      size: 40,
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                      vertical: 20.0), // Yükseklik ayarlayın
                ),
              ),
              height: 58.0,
              width: 271.0, // Genişliği artırın
              
            )
          ],
        ),
      ),
    );
  }
}