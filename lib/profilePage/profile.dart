import 'package:flutter/material.dart';
import 'package:flutter_ubii/profilePage/profile_item.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Form(
        child: Center(
          child: Container(
            width: double.maxFinite,
            height: screenHeight,
            decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color(0xFFF337255C),
              Color(0xFFFA076F9),
              Color(0xFFF7E49F8),
              Color(0xFFF37255C)
            ])),
            child: Column(
              children: [
                SizedBox(height: screenHeight * 0.1,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 140,
                    height: 90,
                    child: CircleAvatar(backgroundImage: AssetImage("assets/images/mercedes1.jpg"),)
                  ),
                ),
                Text("My Profile", style: TextStyle(fontSize: 28, color: Colors.white),),
                SizedBox(height: screenHeight * 0.05),   
                profile_item(data: "My Profile", icon: Icons.person,),
                profile_item(data: "Notification", icon: Icons.notifications_on,),
                profile_item(data: "Message", icon: Icons.email),
                profile_item(data: "Calender", icon: Icons.calendar_month_outlined),
                profile_item(data: "My Events", icon: Icons.confirmation_num_rounded),
                profile_item(data: "Contact Us", icon: Icons.perm_phone_msg_outlined),
                profile_item(data: "Settings", icon: Icons.settings_outlined),
                profile_item(data: "Sign Out", icon: Icons.login_outlined)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

