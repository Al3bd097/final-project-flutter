import 'package:finalp/models/CLUB.dart';
import 'package:finalp/pages/clubs2_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ClubsView extends StatelessWidget {
  const ClubsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Clubs"),
          backgroundColor: Color(0xff000000),
        ),
        body: Container(
          child: ListView.builder(
              itemCount: Club.clubs.length,
              itemBuilder: ((context, index) {
                return Container(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) {
                        return ClubsView2(
                          clubs: Club.clubs[index],
                        );
                      })));
                    },
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              // ignore: sort_child_properties_last
                              child: Image.asset(
                                Club.clubs[index].image,
                                height: 100,
                                width: 100,
                              ),
                              margin:
                                  // ignore: prefer_const_constructors
                                  EdgeInsets.only(
                                      bottom: 10, right: 20, top: 20),
                            ),
                            Text(
                              Club.clubs[index].name,
                              style: TextStyle(
                                  color: Color(0xff4E32DD), fontSize: 30),
                            ),
                          ],
                        ),
                        Text(
                          Club.clubs[index].name,
                        ),
                      ],
                    ),
                  ),
                  margin:
                      EdgeInsets.only(top: 30, bottom: 20, right: 20, left: 20),
                  padding: EdgeInsets.only(bottom: 40),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffe5e5e5),
                      boxShadow: [
                        BoxShadow(color: Color(0xff4E32DD), spreadRadius: 5)
                      ]),
                );
              })),
          color: Color(0xff09051a),
        ));
  }
}
