import 'package:flutter/material.dart';

class Deals extends StatelessWidget {
  Deals({super.key, required this.deals});
  final String deals;
  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "$deals",
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                 GestureDetector(
                  onTap: () {},
                   child: const Text(
                    "Tüm Etkinlikler >",
                    style: TextStyle(
                        //decoration: TextDecoration.underline,
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 179, 179, 181)),
                                 ),
                 )
              ],
            ),
          );
  }
}