import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hospital/view/hospitalinfo.dart';
import 'package:hospital/view/hospitalinfoooooo.dart';
import 'package:hospital/view/mostpopular.dart';

class HomeP extends StatefulWidget {
  const HomeP({Key? key}) : super(key: key);

  @override
  State<HomeP> createState() => _HomePState();
}

class _HomePState extends State<HomeP> {
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
          Expanded(flex: 5, child: HosInfo()),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Most Popular"),
              Text("View All"),
            ],
          ),
          Expanded(flex: 3, child: MostPopular())
        ],
      ),
    );
  }
}
