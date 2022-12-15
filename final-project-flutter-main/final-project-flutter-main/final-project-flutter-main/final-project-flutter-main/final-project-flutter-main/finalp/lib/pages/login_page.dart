import 'package:finalp/pages/Main_Page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          /// TextField 1
          ///
          Container(
            margin: EdgeInsets.only(left: 40, right: 40, bottom: 15),
            child: TextField(
              // controller: weightController,

              decoration: InputDecoration(
                  labelText: "Email",
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
          /// TextField 2
          ///
          Container(
            margin: EdgeInsets.only(left: 40, right: 40, bottom: 15),
            child: TextField(
              // controller: weightController,

              decoration: InputDecoration(
                  labelText: "Password",
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

          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) {
                return MainPage();
              })));
            },
            child: Container(
              child: Text(
                "Sign In",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
              padding: EdgeInsets.all(14),
              margin: EdgeInsets.all(7),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff4E32DD),
              ),
            ),
          )
        ],
      ),
    );
  }
}
