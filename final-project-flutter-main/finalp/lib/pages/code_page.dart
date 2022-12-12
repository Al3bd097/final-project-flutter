import 'dart:collection';

import 'package:finalp/models/CODE.dart';
import 'package:finalp/pages/videos_Page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CodePage extends StatelessWidget {
  const CodePage({super.key, required this.coode});
  final Code coode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(coode.name),
        backgroundColor: Color(0xff000000),
      ),
      body: Container(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              coode.image,
              width: 180,
            ),
            Text(
              coode.name,
              style: TextStyle(fontSize: 30, color: Color(0xffe5e5e5)),
            ),
            Text(
              coode.description,
              style: TextStyle(fontSize: 20, color: Color(0xffe5e5e5)),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return VideosPage();
                })));
              },
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Videos",
                      style: TextStyle(
                        fontSize: 40,
                        color: Color(0xff14213d),
                      ),
                    ),
                    Text(
                      ">",
                      style: TextStyle(fontSize: 40),
                    )
                  ],
                ),
                margin: EdgeInsets.only(top: 50, right: 10, left: 10),
                decoration: BoxDecoration(
                    color: Color(0xffe5e5e5),
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(15),
              ),
            ),
          ],
        )),
        color: Color(0xff14213d),
      ),
    );
  }
}
