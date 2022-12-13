import 'package:finalp/models/CLUB.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ClubsView2 extends StatelessWidget {
  const ClubsView2({super.key, required this.clubs});
  final Club clubs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clubs"),
        backgroundColor: Color(0xff000000),
      ),
      body: Container(
        child: Center(
            child: Column(
          children: [
            Image.asset(
              clubs.image,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  clubs.name,
                  style: TextStyle(color: Color(0xffe5e5e5), fontSize: 30),
                ),
              ],
            )
          ],
        )),
        color: Color(0xff09051a),
      ),
    );
  }
}
