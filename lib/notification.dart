import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFFF337255C),
        title: Text(
          "Notification",
          style: TextStyle(
            fontStyle: FontStyle.normal,
            color: Colors.white,
            fontSize: 26,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            size: 30,
            Icons.arrow_back,
            color: Colors.white, // Geri butonunun rengini buradan değiştirebilirsiniz
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        color: Colors.white,
      ),
    );
  }
}