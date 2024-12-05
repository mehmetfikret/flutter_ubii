import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_ubii/base_scaffold.dart';
import 'package:flutter_ubii/login_register/login_page.dart';
import 'package:flutter_ubii/login_register/register_page.dart';
//import 'package:page_transition/page_transition.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'assets/images/icons8-e-commerce-100 (1).png',
      backgroundColor: const Color.fromRGBO(255, 138, 0, 1),
      nextScreen: const BaseScaffold(),
      splashTransition: SplashTransition.scaleTransition,
      duration: 10,
      //pageTransitionType: PageTransitionType.leftToRight,
    );
  }
}
