import 'package:flutter/material.dart';
import 'package:flutter_ubii/bilim_teknoloji.dart';
import 'package:flutter_ubii/slider_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Container(
      //color: Colors.transparent,
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
      child: ListView(
        //physics: NeverScrollableScrollPhysics(),
        children: [
          Column(
            children: [
               Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(
                  //height: 160,
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: SliderScreen(),
                ),
              ),
              Container(               
                child: Align(
                  alignment: Alignment.center,
                  child: TabBar(
                    controller: _tabController,
                    labelColor: Colors.white,
                    automaticIndicatorColorAdjustment: false,
                    indicatorColor: Colors.transparent,
                    indicatorPadding: EdgeInsets.only(bottom: 3, top: 2),
                    isScrollable: false,
                    unselectedLabelColor: Color(0xffF4FAFF),
                    indicatorSize: TabBarIndicatorSize.label,
                    padding: EdgeInsets.only(top: 10),
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.purple.shade900),
                    tabs: [
                      Tab(
                        child: Container(                          
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border:
                                  Border.all(color: Colors.white.withOpacity(0.8), width: 1)),
                          child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Bilim ve Teknoloji",
                                style: TextStyle(fontSize: 11),
                              )),
                        ),
                      ),
                      Tab(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border:
                                  Border.all(color: Colors.white.withOpacity(0.8), width: 1)),
                          child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Kültür ve Sanat",
                                style: TextStyle(fontSize: 11),
                              )),
                        ),
                      ),
                      Tab(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border:
                                  Border.all(color: Colors.white.withOpacity(0.8), width: 1)),
                          child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Sağlık ve Spor",
                                style: TextStyle(fontSize: 11),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                color: Colors.transparent,
                //height: 400,
                height: MediaQuery.of(context).size.height * 0.5,
                width: double.maxFinite,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    BilimveTeknoloji(),
                    Text("armut"),
                    Text("erik"),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
