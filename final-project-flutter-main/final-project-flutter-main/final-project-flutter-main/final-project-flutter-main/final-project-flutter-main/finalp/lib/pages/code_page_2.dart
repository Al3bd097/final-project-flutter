import 'package:finalp/models/CODE.dart';
import 'package:finalp/pages/Profile_Page.dart';
import 'package:finalp/pages/videos_Page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/link.dart';

class CodePage2 extends StatelessWidget {
  const CodePage2({super.key, required this.codes});
  final Code codes;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(codes.name),
        backgroundColor: Color(0xff000000),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                codes.image,
                width: 180,
              ),
              Text(
                codes.name,
                style: TextStyle(fontSize: 30, color: Color(0xffe5e5e5)),
              ),
              Text(
                codes.description,
                style: TextStyle(fontSize: 20, color: Color(0xffe5e5e5)),
              ),

              ///
              /// Videos
              ///
              Card(
                margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                shadowColor: Color(0xff4E32DD),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xff4E32DD), Colors.black],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight)),
                  child: ExpansionTile(
                      title: Text(
                        "Videos",
                        style: TextStyle(color: Colors.white),
                      ),
                      children: [
                        Transform.scale(
                          scale: 0.92,
                          child: Container(
                            child: ListTile(
                              contentPadding: EdgeInsets.all(15),
                              leading: Transform.scale(
                                  scale: 1.2,
                                  child: Image.asset(codes.videoImage)
                                  // CircleAvatar(
                                  //     backgroundImage: AssetImage(
                                  //   coode.videoImage,
                                  // )),
                                  ),
                              title: Text(
                                codes.videosNames,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    color: Colors.grey),
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40)),
                              trailing: Container(
                                margin: EdgeInsets.only(right: 5, top: 8),
                                child: Link(
                                    target: LinkTarget.blank,
                                    uri: Uri.parse(codes.videoLinks),
                                    builder: (context, followLink) =>
                                        GestureDetector(
                                          onTap: followLink,
                                          child: Text(
                                            ">",
                                            style: TextStyle(
                                                color: Color(0xff4E32DD),
                                                fontSize: 30),
                                          ),
                                        )),
                              ),
                            ),
                            margin: EdgeInsets.only(right: 20, bottom: 20),
                            decoration: BoxDecoration(
                                // gradient: LinearGradient(
                                //     begin: Alignment.centerLeft,
                                //     end: Alignment.centerRight,
                                //     colors: [Color(0xff4E32DD), Colors.black]),
                                borderRadius: BorderRadius.circular(30)),
                          ),
                        ),
                      ]),
                ),
              ),

              ///
              /// Websites
              ///
              Card(
                margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                shadowColor: Color(0xff4E32DD),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xff4E32DD), Colors.black],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight)),
                  child: ExpansionTile(
                      title: Text(
                        "Websites",
                        style: TextStyle(color: Colors.white),
                      ),
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 15, top: 20),
                              child: Link(
                                  target: LinkTarget.blank,
                                  uri: Uri.parse(codes.website),
                                  builder: (context, followLink) =>
                                      GestureDetector(
                                          onTap: followLink,
                                          child: Container(
                                            margin: EdgeInsets.only(bottom: 40),
                                            child: Text(
                                              "* ${codes.websiteName}",
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ))),
                            ),
                          ],
                        ),
                      ]),
                ),
              ),
            ],
          )),
          color: Color(0xff09051a),
          padding: EdgeInsets.only(bottom: 450),
        ),
      ),
    );
  }
}
