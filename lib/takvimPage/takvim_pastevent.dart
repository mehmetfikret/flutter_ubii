import 'package:flutter/material.dart';

class takvim_production_pastevent extends StatefulWidget {
  const takvim_production_pastevent({super.key, takvim_production_pastevent});

  @override
  State<takvim_production_pastevent> createState() => _takvim_productionState();
}

class _takvim_productionState extends State<takvim_production_pastevent> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.all(10),
      width: 400,
      height: screenHeight * 0.23,
      //color: Colors.blue,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue,
          image: const DecorationImage(
              image: AssetImage("assets/images/mercedes1.jpg"),
              fit: BoxFit.fill)),
      child: Padding(
        padding: EdgeInsets.only(top: 80, left: 30, right: 30, bottom: 10),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.8),
              borderRadius: BorderRadius.circular(5)),
          width: 200,
          height: 50,
          child: Stack(
            children: [
              RichText(
                selectionColor: Colors.red,
                textAlign: TextAlign.justify,
                softWrap: true,
                text: const TextSpan(children: [
                  TextSpan(
                    text:
                        "Türkiye Cumhuriyetinin 100.yılına özel olan Maltepe Sahilde gerçekleşecek etkinliğe hepiniz davetlisiniz asdsadas dasdasd asdasdasd asdsa asdasdsda asdasds",
                    style: TextStyle(fontSize: 10),
                  ),
                  TextSpan(text: "\n"),
                  WidgetSpan(
                      child: Icon(
                    Icons.access_time,
                    size: 16,
                    color: Colors.white,
                  )),
                  TextSpan(text: "12.00", style: TextStyle(fontSize: 13)),
                  WidgetSpan(
                      child: Icon(
                    Icons.location_on_outlined,
                    size: 16,
                    color: Colors.white,
                  )),
                  TextSpan(
                      text: "İstanbul, Maltepe", style: TextStyle(fontSize: 13))
                ]),
              ),
              Positioned(
                left: 175,
                top: 20,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Online",
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500, color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      shadowColor: Colors.yellow,
                      minimumSize: Size(15, 15)),
                ),
              ),
              Positioned(
                left: 245,
                top: 20,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Delete",
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500, color: Colors.purple.shade900),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: Size(15, 15)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
