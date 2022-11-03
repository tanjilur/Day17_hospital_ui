import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hospital/model/hospital.dart';
import 'package:hospital/view/hospitalinfoooooo.dart';

class HosInfo extends StatefulWidget {
  const HosInfo({Key? key}) : super(key: key);

  @override
  State<HosInfo> createState() => _HosInfoState();
}

class _HosInfoState extends State<HosInfo> {
  final hospitalsss = Hospital.hospital_info();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          itemCount: hospitalsss.length,
          itemBuilder: (context, index) {
            var hospital = hospitalsss[index];
            return Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    hospital.img,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 5,
                  bottom: 40,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        hospital.name,
                        style: TextStyle(fontSize: 20, color: Colors.yellow),
                      ),
                      Text(
                        hospital.Address,
                        style: TextStyle(fontSize: 20, color: Colors.yellow),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 5,
                  bottom: 5,
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(50)),
                    child: Icon(Icons.arrow_forward),
                  ),
                )
              ],
            );
          }),
    );
  }
}
