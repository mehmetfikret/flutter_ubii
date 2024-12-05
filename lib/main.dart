import 'package:flutter/material.dart';
import 'package:flutter_ubii/splash.dart';
import 'package:grock/grock.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: Grock.navigationKey,
      scaffoldMessengerKey: Grock.scaffoldMessengerKey,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const Splash(),
    );
  }
}

