import 'package:finalp/pages/Home_Page.dart';
import 'package:finalp/pages/Main_Page.dart';
import 'package:finalp/pages/chat_view.dart';
import 'package:finalp/pages/code_page.dart';
import 'package:finalp/pages/videos_Page.dart';
import 'package:finalp/tabs/Front_end.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
      theme: ThemeData(primarySwatch: Colors.blueGrey),
    );
  }
}
