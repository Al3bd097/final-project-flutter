import 'package:carousel_slider/carousel_slider.dart';
import 'package:finalp/models/CLUB.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class ClubsView2 extends StatelessWidget {
  ClubsView2({super.key, required this.clubs});
  final Club clubs;
  final List<String> imageList = [
    "https://hodhod.kfas.org.kw/wp-content/uploads/2020/05/banner.png",
    "https://acakuw.com/wp-content/uploads/2022/02/8-2.jpg",
    "http://www.annaharkw.com/Resources/ArticlesPictures/2022/08/18/d6450cf4-975f-4ff6-a602-7a1e8c92dec3_main_New.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clubs2"),
        backgroundColor: Color(0xff000000),
      ),
      body: Container(
        padding: EdgeInsets.only(bottom: 0),
        child: SingleChildScrollView(
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
                              "assets/images/2467893.png",
                            )),
                          ),
                        ),
                        title: Text(
                          "Web development",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text("Html, CSS, JavaScript"),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        trailing: IconButton(
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xff4E32DD),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Color(0xff4E32DD), Colors.black]),
                          borderRadius: BorderRadius.circular(20)),
                    ),

                    ///
                    /// iOS Tile //
                    ///
                    Container(
                      child: ListTile(
                        contentPadding: EdgeInsets.all(15),
                        leading: Transform.scale(
                          scale: 3.0,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.apple),
                          ),
                        ),
                        title: Text(
                          "iOS",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text("swift, SwiftUI"),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        trailing: IconButton(
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xff4E32DD),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Color(0xff4E32DD), Colors.black]),
                          borderRadius: BorderRadius.circular(20)),
                    ),

                    ///
                    /// Android Tile
                    ///
                    Container(
                      child: ListTile(
                        contentPadding: EdgeInsets.all(15),
                        leading: Transform.scale(
                          scale: 3.0,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.android),
                          ),
                        ),
                        title: Text(
                          "Android",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text("Java, xml"),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        trailing: IconButton(
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xff4E32DD),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Color(0xff4E32DD), Colors.black]),
                          borderRadius: BorderRadius.circular(20)),
                    ),

                    ///
                    /// Game Dev Tile
                    ///
                    Container(
                      child: ListTile(
                        contentPadding: EdgeInsets.all(15),
                        leading: Transform.scale(
                          scale: 3.0,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.gamepad),
                          ),
                        ),
                        title: Text(
                          "GameDev",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text("C#, Unity"),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        trailing: IconButton(
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xff4E32DD),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Color(0xff4E32DD), Colors.black]),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 60),
                      child: Link(
                          target: LinkTarget.blank,
                          uri: Uri.parse(
                              "https://goo.gl/maps/M88o9xU1HueruD8W7"),
                          builder: (context, followLink) => ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xff4E32DD),
                                  minimumSize: Size(340, 45)),
                              onPressed: followLink,
                              child: Text(
                                "Head there!",
                              ))),
                    )
                  ],
                ),
              ],
            )),
            color: Color(0xff09051a),
          ),
        ),
      ),
    );
  }
}
