import 'package:flutter/material.dart';
import 'package:flutter_ubii/takvimPage/takvim_pastevent.dart';

class takvim_upcoming extends StatefulWidget {
  const takvim_upcoming({super.key});

  @override
  State<takvim_upcoming> createState() => _TakvimState();
}

class _TakvimState extends State<takvim_upcoming> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Color(0xFFF37255C),        
            Color(0xFFFA076F9),
            Color(0xFFF7E49F8),
            Color.fromARGB(255, 45, 29, 78)
          ])),
      child: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
          takvim_production_pastevent(),
          takvim_production_pastevent(),
          takvim_production_pastevent(),
          takvim_production_pastevent(),
          takvim_production_pastevent(),
          takvim_production_pastevent(),
          takvim_production_pastevent(),
          takvim_production_pastevent(),
          SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}
