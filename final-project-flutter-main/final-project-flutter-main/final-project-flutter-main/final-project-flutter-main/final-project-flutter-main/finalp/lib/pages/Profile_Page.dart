import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  Future<void> _signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff09051A),
      appBar: AppBar(
        title: Text("Profile Page"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 40, bottom: 35),
              child: Transform.scale(
                scale: 1.6,
                child: CircleAvatar(
                  radius: 52,
                  backgroundImage: AssetImage("assets/images/IMG_0409.jpeg"),
                ),
              ),
            ),
            Divider(
              color: Colors.grey.shade400,
              indent: 15.0,
              endIndent: 15.0,
            ),
            Text(
              "Abdullah Albannay",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            Text(
              "al3bdf@gmail.com",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            ElevatedButton(
                onPressed: () {
                  _signOut();
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            backgroundColor: Color(0xff4E32DD),
                            title: Text(
                              "Signing Out...!",
                              style: TextStyle(color: Colors.white),
                            ),
                            content: Text("We Are sorry to see you leave",
                                style: TextStyle(color: Colors.white)),
                          ));
                },
                child: Text("Sign Out"))
          ],
        ),
      ),
    );
  }
}
