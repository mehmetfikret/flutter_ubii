
import 'package:flutter/material.dart';

class profile_item extends StatelessWidget {
  profile_item({super.key, required this.data, required this.icon});
  String data;
  IconData icon;
 
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              SizedBox(
                width: 12,
              ),
              Text(
                "$data",
                style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ],
          ),
          SizedBox(height: 30,)
        ],
      ),
    );
  }
}
