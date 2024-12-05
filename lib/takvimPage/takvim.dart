import 'package:flutter/material.dart';
import 'package:flutter_ubii/takvimPage/takvim_upcoming.dart';

class Takvim extends StatefulWidget {
  const Takvim({super.key});

  @override
  State<Takvim> createState() => _TakvimState();
}

class _TakvimState extends State<Takvim> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Color(0xFFF37255C),                     
            Color.fromARGB(255, 45, 29, 78)
          ])),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 15,),
           Container(
              height: screenHeight * 0.07,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(25.0)
              ),
              child: TabBar(
                controller: _tabController,
                labelColor: Colors.white.withOpacity(0.8),
                unselectedLabelColor: Colors.purple,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(25)
                ),
                tabs: [
                Tab(text: "Upcoming Events",),
                Tab(text: "Past Events",)
              ],),
            ),            
            SizedBox(height: 5,),
            Container(
              width: double.maxFinite,
              height: screenHeight,
              child: TabBarView(
                controller: _tabController,
                children: [              
              takvim_upcoming(),
              Tab(text: "deneme",)          
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
