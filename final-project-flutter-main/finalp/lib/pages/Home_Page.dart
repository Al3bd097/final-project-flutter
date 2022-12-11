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
        appBar: AppBar(title: Text("TapBar")),
        body: Column(
          children: [
            TabBar(
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50), // Creates border
                    color: Colors.blueAccent),
                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.home,
                      color: Colors.deepPurple,
                    ),
                  ),
                  Tab(
                      icon: Icon(
                    Icons.home,
                    color: Colors.deepPurple,
                  ))
                ]),
            Expanded(child: TabBarView(children: [FrontEnd(), BackEnd()]))
          ],
        ),
      ),
    );
  }
}
