import 'package:finalp/pages/Home_Page.dart';
import 'package:finalp/pages/Main_Page.dart';
import 'package:finalp/pages/chat_view.dart';
import 'package:finalp/pages/code_page.dart';
import 'package:finalp/pages/login_page.dart';
import 'package:finalp/pages/videos_Page.dart';
import 'package:finalp/tabs/Front_end.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return MainPage();
          } else {
            return LoginPage();
          }
        },
      ),
      theme: ThemeData(primarySwatch: Colors.blueGrey),
    );
  }
}
