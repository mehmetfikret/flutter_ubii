import 'package:flutter/material.dart';
import 'package:flutter_ubii/deals.dart';
import 'package:flutter_ubii/product_card.dart';

class BilimveTeknoloji extends StatelessWidget {
  const BilimveTeknoloji({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Column(
          children: [
            Deals(deals: "Selçuk Üniversitesi"),
        
            /////////////////////////////////////
            SizedBox(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 10),
                children: [
                  ProductCard()
                ],
              ),
            ),
        
            Deals(deals: "Konya Teknik"),
        
             SizedBox(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 10),
                children: [
                  ProductCard(),
                   ProductCard(),
                    ProductCard(),
                ],
              ),
            ),

            Deals(deals: "Atatürk Üniversitesi"),

            SizedBox(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 10),
                children: [
                  ProductCard()
                ],
              ),
            ),
        
          ],
        )
      ],
    );
  }
}