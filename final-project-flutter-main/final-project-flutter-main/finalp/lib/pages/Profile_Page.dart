import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff09051A),
      appBar: AppBar(
        title: Text("Profile Page"),
        backgroundColor: Colors.black,
      ),
      body: Center(child: Text("Profile Page")),
    );
  }
}
