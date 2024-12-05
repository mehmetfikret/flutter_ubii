import 'package:flutter/material.dart';

class kesfet_production extends StatefulWidget {
  const kesfet_production({super.key, kesfet_production});

  @override
  State<kesfet_production> createState() => _takvim_productionState();
}

class _takvim_productionState extends State<kesfet_production> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [Container(
        margin: EdgeInsets.all(10),
        width: 400,
        height: 150,
        //color: Colors.blue,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.blue,
            image: const DecorationImage(
                image: AssetImage("assets/images/mercedes1.jpg"),
                fit: BoxFit.fill)),
        child: Padding(
          padding: EdgeInsets.only(top: 70, left: 25, right: 25, bottom: 10),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.8),
                borderRadius: BorderRadius.circular(5)),
            width: 200,
            height: 70,
            child: Stack(
              children: [
                RichText(
                  selectionColor: Colors.red,
                  textAlign: TextAlign.center,
                  softWrap: true,
                  text: const TextSpan(children: [
                    TextSpan(
                      text:
                          "Türkiye Cumhuriyetinin 100.yılına özelaa aaa asdasqwe\n",
                      style: TextStyle(fontSize: 9),
                    ),
                    //TextSpan(text: "\n"),
                    WidgetSpan(
                        child: Icon(
                      Icons.access_time,
                      size: 12,
                      color: Colors.white,
                    )),
                    TextSpan(text: "12.00", style: TextStyle(fontSize: 9)),
                    WidgetSpan(
                        child: Icon(
                      Icons.location_on_outlined,
                      size: 12,
                      color: Colors.white,
                    )),
                    TextSpan(
                        text: "İstanbul, Maltepe", style: TextStyle(fontSize: 10))
                  ]),
                ),
              
              ],
            ),
          ),
        ),
      ),
      Positioned(
            left: 150,
            bottom: 105,
            child: IconButton(onPressed: () {
            
                    }, icon: Icon(Icons.notification_add_rounded,),
                    color: Colors.white,
                    iconSize: 20,
                    ),
                ),
      ]
    );
  }
}
