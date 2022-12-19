import 'dart:collection';

import 'package:finalp/models/CODE.dart';
import 'package:finalp/pages/Profile_Page.dart';
import 'package:finalp/pages/videos_Page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/link.dart';

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
      body: SingleChildScrollView(
        child: Container(
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
              Container(
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
                    RotatedBox(
                      quarterTurns: 1,
                      child: Text(
                        ">",
                        style: TextStyle(fontSize: 30),
                      ),
                    )
                  ],
                ),
                margin: EdgeInsets.only(top: 50, right: 10, left: 10),
                decoration: BoxDecoration(
                    color: Color(0xffe5e5e5),
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(15),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Link(
                    target: LinkTarget.blank,
                    uri: Uri.parse(coode.videoLinks),
                    builder: (context, followLink) => GestureDetector(
                        onTap: followLink,
                        child: Image.asset(
                          coode.videoImage,
                          width: 400,
                        ))),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Websites",
                      style: TextStyle(
                        fontSize: 40,
                        color: Color(0xff14213d),
                      ),
                    ),
                    RotatedBox(
                      quarterTurns: 1,
                      child: Text(
                        ">",
                        style: TextStyle(fontSize: 30),
                      ),
                    )
                  ],
                ),
                margin: EdgeInsets.only(top: 50, right: 10, left: 10),
                decoration: BoxDecoration(
                    color: Color(0xffe5e5e5),
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(15),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15, top: 20),
                    child: Link(
                        target: LinkTarget.blank,
                        uri: Uri.parse(coode.website),
                        builder: (context, followLink) => GestureDetector(
                            onTap: followLink,
                            child: Text(
                              coode.websiteName,
                              style: TextStyle(
                                  color: Color(0xff4E32DD),
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ))),
                  ),
                ],
              ),
            ],
          )),
          color: Color(0xff09051a),
          padding: EdgeInsets.only(bottom: 250),
        ),
      ),
    );
  }
}
