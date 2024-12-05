import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Image.asset("assets/images/mercedes2.jpg",
                width: 200, height: 200)),
        Positioned(
          top: 50, // Metnin yüksekliğini ve yatay konumunu ayarlayın
          left: 20,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.withOpacity(0.7)),
            width: 160,
            height: 50,
            //color: Colors.red,
            child: Padding(
              padding: EdgeInsets.only(left: 13, top: 5),
              child: RichText(
                text: const TextSpan(
                  children: [
                  TextSpan(
                    text: "Maltepe Sahil 100.yıl etkinliği",
                    style: TextStyle(fontSize: 10),
                  ),
                  TextSpan(text: "                    "),
                  WidgetSpan(child: Icon(Icons.access_time,size: 13,color: Colors.white,)),
                  TextSpan(text: "12.00", style: TextStyle(fontSize: 10)),
                  WidgetSpan(child: Icon(Icons.location_on_outlined, size: 13,color: Colors.white,)),
                  TextSpan(text: "İstanbul, Maltepe",
                  style: TextStyle(fontSize: 10)
                  )
                  ]
                ),
              ),
            ),
          ),
        ),
        Positioned(
            left: 149,
            bottom: 82,
            child: IconButton(onPressed: () {
            
                    }, icon: Icon(Icons.notification_add_rounded,),
                    color: Colors.white,
                    iconSize: 20,
                    ),
                ),
      ],
    );
  }
}
