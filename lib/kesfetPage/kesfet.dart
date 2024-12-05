import 'package:flutter/material.dart';
import 'package:flutter_ubii/kesfetPage/kesfet_production.dart';

class Kesfet extends StatelessWidget {
  const Kesfet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: TextField(
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xFF302360),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide.none
            ),
            hintText: "Eg: Deneme",
            prefixIcon: Icon(Icons.search),
            prefixIconColor: Colors.purple.shade900
          ),
        ),
        backgroundColor: Colors.transparent,
      ),*/
      body: Container(
        decoration: const BoxDecoration(
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
            SizedBox(height: 15,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 28,),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.6),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide.none,
                        ),
                    hintText: "Etkinlik Adı",
                    hintStyle: TextStyle(color: Colors.purple.withOpacity(0.8)),
                    prefixIcon: Icon(Icons.search_sharp),
                    prefixIconColor: Colors.purple.shade900),
              ),
            ),
            SizedBox(height: 10,),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.fromLTRB(0, 1, 0, 1),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.3,
                ),
                itemCount: 12,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      print('Tıklandı:');
                    },
                    child: kesfet_production(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
