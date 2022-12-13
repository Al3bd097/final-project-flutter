import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models/CODE.dart';

class VideosPage extends StatelessWidget {
  const VideosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Videos"),
        backgroundColor: Color(0xff000000),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: 2,
            itemBuilder: ((context, index) {
              return Container(
                  child: Card(
                child: Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${Code.FrontEnds[index].videosNames[index]}",
                          style: TextStyle(fontSize: 13),
                        ),
                        Text(">")
                      ]),
                  margin: EdgeInsets.all(10),
                ),
              ));
            })),
      ),
      backgroundColor: Color(0xff14213d),
    );
  }
}
