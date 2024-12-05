import 'package:flutter/material.dart';
import 'package:flutter_ubii/forgot_password.dart';
import 'package:flutter_ubii/home.dart';
import 'package:flutter_ubii/kesfetPage/kesfet.dart';
import 'package:flutter_ubii/profilePage/profile.dart';
import 'package:flutter_ubii/takvimPage/takvim.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class ModernBottomNavnar extends StatefulWidget {
  const ModernBottomNavnar({super.key});

  @override
  State<ModernBottomNavnar> createState() => _ModernBottomNavnarState();
}

class _ModernBottomNavnarState extends State<ModernBottomNavnar> {
  int _selectIndex = 0;
  void _navigateBottomBar(int index) {
    setState(() {
      _selectIndex = index;
      debugPrint(_selectIndex.toString());
    });
  }

  final List<Widget> _pages = [
    Home(),
    Takvim(),
    Kesfet(),
    Profile()
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: _pages[_selectIndex],
    bottomNavigationBar: GNav(
    selectedIndex: _selectIndex,
    onTabChange: _navigateBottomBar,
    backgroundColor: Color(0xFFF337255C),
    tabBorder: Border.all(width: 1, color: Colors.transparent),
    tabs: [
      GButton(
        icon: Icons.home,               
                text: "Ana Sayfa",
                gap: 8,
                iconColor: Colors.white,
                iconActiveColor: Colors.white,
                textColor: Colors.white,
                backgroundGradient: LinearGradient(
                  begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.white.withOpacity(0.4),
                 Colors.purple.withOpacity(0.1)
              ]
                ),
                padding: EdgeInsets.all(16),
      ),
      GButton(
        icon: Icons.calendar_month_outlined,               
                text: "Takvim",
                gap: 8,
                iconColor: Colors.white,
                iconActiveColor: Colors.white,
                textColor: Colors.white,
                backgroundGradient: LinearGradient(
                  begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.white.withOpacity(0.4),
                 Colors.purple.withOpacity(0.1)
              ]
                ),
                padding: EdgeInsets.all(16),
      ),
      GButton(
        icon: Icons.explore,               
                text: "Keşfet",
                gap: 8,
                iconColor: Colors.white,
                iconActiveColor: Colors.white,
                textColor: Colors.white,
               backgroundGradient: LinearGradient(
                  begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.white.withOpacity(0.4),
                 Colors.purple.withOpacity(0.1)
              ]
                ),
                padding: EdgeInsets.all(16),
      ),
      GButton(
        icon: Icons.person,               
                text: "Profil",
                gap: 8,
                iconColor: Colors.white,
                iconActiveColor: Colors.white,
                textColor: Colors.white,
                backgroundGradient: LinearGradient(
                  begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.white.withOpacity(0.4),
                 Colors.purple.withOpacity(0.1)
              ]
                ),
                padding: EdgeInsets.all(16),
      ),
    ],
    
    ),
        
    );
      
    
  }

}
