//import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hospital/view/hospitalinfoooooo.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ],
      ),
      body: Column(
        children: [
          Text(
            "Hospital Info",
            style: TextStyle(fontSize: 20),
          ),
          Expanded(flex: 4, child: HospitalInfo()),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Most Popular"),
              Text("View All"),
            ],
          ),
          Expanded(flex: 2, child: Placeholder()),
        ],
      ),
    );
  }
}


/*
Row(
            
            children: [
              BottomNavigationBar(
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: "Home",
                      backgroundColor: Colors.blueAccent),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.share),
                      label: "Share",
                      backgroundColor: Colors.blueAccent),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.search),
                      label: "Shearch",
                      backgroundColor: Colors.blueAccent),
                ],
              ),
            ],
          )
*/