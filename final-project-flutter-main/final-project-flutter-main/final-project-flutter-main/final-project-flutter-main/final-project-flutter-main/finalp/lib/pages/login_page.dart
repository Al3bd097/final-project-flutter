import 'package:finalp/pages/Main_Page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emails = TextEditingController();

  final passwords = TextEditingController();

  Future signIn() async {
    FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emails.text.trim(), password: passwords.text.trim());
    print("Signed in");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.amber,
      backgroundColor: Color(0xff09051A),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Login"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "<Coder/>",
              style:
                  TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 40),
            ),
          ),

          ///
          /// Email
          ///
          Container(
            margin: EdgeInsets.only(left: 40, right: 40, bottom: 15),
            child: TextField(
              controller: emails,
              // style: TextStyle(color: Color(0xff4E32DD)),
              style: TextStyle(color: Colors.grey),
              decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(
                    Icons.mail,
                    color: Colors.grey,
                  ),
                  hintText: "Enter your Email",
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white.withOpacity(0.8),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(15)),
                  focusedBorder: OutlineInputBorder(
                      // borderRadius: BorderRadius.circular(40),
                      borderSide:
                          BorderSide(color: Color(0xff4E32DD), width: 2))),
            ),
          ),

          ///
          /// Password
          ///
          Container(
            margin: EdgeInsets.only(left: 40, right: 40, bottom: 15),
            child: TextField(
              controller: passwords,
              obscureText: true,
              // style: TextStyle(color: Color(0xff4E32DD)),
              style: TextStyle(color: Colors.grey),
              decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(
                    Icons.lock_outline_rounded,
                    color: Colors.grey,
                  ),
                  hintText: "Enter your Email",
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white.withOpacity(0.8),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(15)),
                  focusedBorder: OutlineInputBorder(
                      // borderRadius: BorderRadius.circular(40),
                      borderSide:
                          BorderSide(color: Color(0xff4E32DD), width: 2))),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10, right: 10, bottom: 20),
                child: Text(
                  "Forgot password?",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff4E32DD), minimumSize: Size(340, 45)),
            onPressed: (() {
              signIn();
            }),
            child: Text(
              "Sign In",
              style: TextStyle(
                color: Colors.white.withOpacity(0.8),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 15, bottom: 15, right: 8, left: 8),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 9),
                  child: Text(
                    "________________________",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    " OR",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text("________________________",
                      style: TextStyle(color: Colors.grey)),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Transform.scale(
              scale: 1.2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.apple,
                    color: Colors.grey,
                  ),
                  Text(
                    "  Sign in with Apple id",
                    style: TextStyle(color: Color(0xff4E32DD)),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
