import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hospital/model/hospital.dart';

class MostPopular extends StatefulWidget {
  const MostPopular({Key? key}) : super(key: key);

  @override
  State<MostPopular> createState() => _MostPopularState();
}

class _MostPopularState extends State<MostPopular> {
  final populartherapy = Hospital.hospital_info();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.share), label: "Share"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
      ]),
      body: ListView.separated(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            var ppt = populartherapy[index];
            return Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    ppt.img,
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      ppt.name,
                      style: TextStyle(fontSize: 15, color: Colors.yellow),
                    ),
                    Text(
                      ppt.Address,
                      style: TextStyle(fontSize: 15, color: Colors.yellow),
                    ),
                  ],
                ),
              ],
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 10,
            );
          },
          itemCount: populartherapy.length),
    );
  }
}
