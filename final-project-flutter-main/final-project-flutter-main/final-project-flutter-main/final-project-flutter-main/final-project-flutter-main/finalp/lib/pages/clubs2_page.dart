import 'package:carousel_slider/carousel_slider.dart';
import 'package:finalp/models/CLUB.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/url_launcher.dart';

class ClubsView2 extends StatelessWidget {
  ClubsView2({super.key, required this.clubs});
  final Club clubs;
  final List<String> imageList = [
    "https://hodhod.kfas.org.kw/wp-content/uploads/2020/05/banner.png",
    "https://acakuw.com/wp-content/uploads/2022/02/8-2.jpg",
    "http://www.annaharkw.com/Resources/ArticlesPictures/2022/08/18/d6450cf4-975f-4ff6-a602-7a1e8c92dec3_main_New.jpg"
  ];

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri(scheme: "https", host: url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw "Can not launch url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clubs2"),
        backgroundColor: Color(0xff000000),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
              child: Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                    enlargeCenterPage: true,
                    enableInfiniteScroll: false,
                    autoPlay: true),
                items: imageList
                    .map((e) => ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Stack(
                            fit: StackFit.expand,
                            children: <Widget>[
                              Image.network(
                                e,
                                width: 1050,
                                height: 350,
                                fit: BoxFit.cover,
                              )
                            ],
                          ),
                        ))
                    .toList(),
              ),
              ElevatedButton(
                  onPressed: () {
                    _launchURL("https://goo.gl/maps/N1MLc8uBhfaHhs2V7");
                  },
                  child: Text("Here")),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(17.0),
                    child: Text(
                      "Learn from 4 tracks of your choice!",
                      style: TextStyle(color: Colors.white, fontSize: 21),
                    ),
                  ),
                ],
              ),

              ///
              /// Web Tile //
              ///
              Column(
                children: [
                  Container(
                    child: ListTile(
                      contentPadding: EdgeInsets.all(15),
                      leading: Transform.scale(
                        scale: 1.3,
                        child: Transform.scale(
                          scale: 1.0,
                          child: CircleAvatar(
                              backgroundImage: AssetImage(
                            "assets/images/html.png",
                          )),
                        ),
                      ),
                      title: Text(
                        "Web",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("html:5, css, javasript"),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                    ),
                    margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 10,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(20)),
                  ),

                  ///
                  /// iOS Tile //
                  ///
                  Container(
                    child: ListTile(
                      contentPadding: EdgeInsets.all(15),
                      leading: Transform.scale(
                        scale: 1.3,
                        child: Transform.scale(
                          scale: 1.0,
                          child: CircleAvatar(
                              backgroundImage: AssetImage(
                            "assets/images/apple-logo-transparent.png",
                          )),
                        ),
                      ),
                      title: Text(
                        "iOS",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("swift, SwiftUI"),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                    ),
                    margin: EdgeInsets.only(top: 10, left: 20, right: 20),
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(20)),
                  ),

                  ///
                  /// Android Tile
                  ///
                  Container(
                    child: ListTile(
                      contentPadding: EdgeInsets.all(15),
                      leading: Transform.scale(
                        scale: 1.3,
                        child: Transform.scale(
                          scale: 1.0,
                          child: CircleAvatar(
                              backgroundImage: AssetImage(
                            "assets/images/Android_robot.svg.png",
                          )),
                        ),
                      ),
                      title: Text(
                        "Android",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("Java, xml"),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                    ),
                    margin: EdgeInsets.only(top: 10, left: 20, right: 20),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20)),
                  ),

                  ///
                  /// Game Dev Tile
                  ///
                  Container(
                    child: ListTile(
                      contentPadding: EdgeInsets.all(15),
                      leading: Transform.scale(
                        scale: 1.3,
                        child: Transform.scale(
                          scale: 1.0,
                          child: CircleAvatar(
                              backgroundImage: AssetImage(
                            "assets/images/unity-69-logo-png-transparent.png",
                          )),
                        ),
                      ),
                      title: Text(
                        "Web",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("C#, unity"),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                    ),
                    margin: EdgeInsets.only(top: 10, left: 20, right: 20),
                    decoration: BoxDecoration(
                        color: Colors.indigo,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ],
              ),
            ],
          )),
          color: Color(0xff09051a),
        ),
      ),
    );
  }
}
