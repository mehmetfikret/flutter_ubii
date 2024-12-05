import 'dart:ui';

import 'package:flutter/material.dart';

class NavbarMenu extends StatelessWidget {
  const NavbarMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 2, sigmaY: 1),
      child: Drawer(
        width: 180,
        backgroundColor: Colors.transparent,
        child: ListView(
          children: [
            /*UserAccountsDrawerHeader(
              currentAccountPictureSize: Size(115, 85),
              accountName: Text(""),
              accountEmail:  Container(
                width: 200,
                height: 150,
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: Text("AD SOYAD", style: TextStyle(fontSize: 20),),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: ClipOval(child: Image.asset("assets/images/mercedes1.jpg", fit: BoxFit.fill,width: 250, height: 300,),
                ),            
              ),
              decoration: const BoxDecoration(
                color: Colors.purple,
                
              ),
            ),*/
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 100,
                height: 100,
                child: const CircleAvatar(
                  backgroundColor: Colors.black,
                  backgroundImage: AssetImage("assets/images/mercedes1.jpg"),
                ),
              ),
            ),
            Center(child: Text("Betül Terzioğlu", style: TextStyle(color: Colors.purple.shade200),)),
            const Divider(
              height: 1,
              color: Colors.transparent,
            ),
            ListTile(
              leading: Icon(Icons.person, size: 28, color: Colors.white),
              title: Text(
                "My Profil",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.white),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.notifications, size: 28, color: Colors.white),
              title: Text(
                "Notification",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.white),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.message, size: 28, color: Colors.white,),
              title: Text(
                "Message",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.white),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.confirmation_number, size: 28, color: Colors.white),
              title: Text(
                "My Events",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.white),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.confirmation_number, size: 28, color: Colors.white),
              title: Text(
                "My Events",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.white),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.confirmation_number, size: 28, color: Colors.white),
              title: Text(
                "My Events",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.white),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.confirmation_number, size: 28, color: Colors.white),
              title: Text(
                "My Events",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.white),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
