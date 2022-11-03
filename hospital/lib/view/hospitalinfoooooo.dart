import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hospital/model/hospitalll.dart';

class HospitalInfo extends StatefulWidget {
  const HospitalInfo({Key? key}) : super(key: key);

  @override
  State<HospitalInfo> createState() => _HospitalInfoState();
}

class _HospitalInfoState extends State<HospitalInfo> {
  final hospital_list = Hospitall.hospital_listInfo();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          itemCount: hospital_list.length,
          itemBuilder: (context, index) {
            var hospitall = hospital_list[index];

            return Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: ClipRRect(
                    child: Image.asset(
                      hospitall.img,
                      height: double.infinity,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 40,
                  left: 2,
                  child: Column(
                    children: [
                      Text(
                        hospitall.name,
                        style: TextStyle(fontSize: 20, color: Colors.yellow),
                      ),
                      Text(
                        hospitall.address,
                        style: TextStyle(fontSize: 20, color: Colors.yellow),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.yellow,
                      ),
                    ],
                  ),
                ),
              ],
            );
          }),
    );
  }
}
