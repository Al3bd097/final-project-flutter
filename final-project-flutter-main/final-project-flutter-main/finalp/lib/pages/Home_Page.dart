import 'package:finalp/tabs/Back_end.dart';
import 'package:finalp/tabs/Front_end.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("TapBar"),
          backgroundColor: Color(0xff000000),
        ),
        body: Container(
          child: Column(
            children: [
              TabBar(
                  indicatorColor: Color(0xff4E32DD),
                  indicatorWeight: 2.0,
                  tabs: [
                    Tab(
                        text: "FrontEnd",
                        icon: ImageIcon(
                          AssetImage("assets/images/2467893.png"),
                          color: Color(0xff4E32DD),
                          size: 45,
                        )),
                    Tab(
                        text: "BackEnd",
                        icon: ImageIcon(
                          AssetImage(
                              "assets/images/backend-developer-1-478025.png"),
                          color: Color(0xff4E32DD),
                          size: 40,
                        ))
                  ]),
              Expanded(child: TabBarView(children: [FrontEnd(), BackEnd()]))
            ],
          ),
          color: Color(0xff000000),
        ),
      ),
    );
  }
}
