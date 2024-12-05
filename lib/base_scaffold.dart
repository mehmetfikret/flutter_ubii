import 'package:app_bar_with_search_switch/app_bar_with_search_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ubii/login_register/login_page.dart';
import 'package:flutter_ubii/modern_bottom.dart';
import 'package:flutter_ubii/navbar.dart';
import 'package:flutter_ubii/notification.dart';

class BaseScaffold extends StatelessWidget {
  const BaseScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SafeArea(child: NavbarMenu()),
      appBar: AppBarWithSearchSwitch(
        appBarBuilder: (context) {
          return AppBar(
            backgroundColor: Color(0xFFF337255C),
            elevation: 5,
            leading: IconButton(
              icon: const Icon(
                Icons.menu,
                size: 34,
                color: Colors.white,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
            centerTitle: true,
            title: Text(
              "UBI",
              style: TextStyle(
                  fontStyle: FontStyle.values[0],
                  color: Colors.white,
                  fontSize: 26),
            ),
            actions: [
              IconButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NotificationPage(),
                      )),
                  icon: Icon(
                    Icons.notifications,
                    size: 34,
                    color: Colors.white,
                  )),
            ],
          );
        },
      ),
      body: Scaffold(
        body: ModernBottomNavnar(),
      ),
    );
  }
}
