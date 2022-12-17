import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff09051a),
      appBar: AppBar(
        title: Text("Contact Us"),
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: EdgeInsets.only(bottom: 60),
        child: Column(
          children: [
            Text("Send us an Email"),
            Image.asset("finalp/assets/images/paper-airplane-icon copy.png"),
            Spacer(),
            Container(
              margin: EdgeInsets.only(left: 40, right: 40, bottom: 15),
              child: TextField(
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
            Container(
              margin: EdgeInsets.only(left: 40, right: 40, bottom: 15),
              child: TextField(
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
            Container(
              margin: EdgeInsets.only(left: 40, right: 40, bottom: 15),
              child: TextField(
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
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            backgroundColor: Color(0xff4E32DD),
                            title: Text(
                              "Email Sent!",
                              style: TextStyle(color: Colors.white),
                            ),
                            content: Text(
                                "We will make sure to reply as fast as possible, Thanks for contacting us!",
                                style: TextStyle(color: Colors.white)),
                          ));
                },
                child: Text("Send")),
            Divider(),
            Text(
              "Or",
              style: TextStyle(fontSize: 40, color: Colors.white),
            ),
            Text("Live chat with our Agents on whatsapp"),
            Image.asset("finalp/assets/images/WhatsApp_icon copy.png")
          ],
        ),
      ),
    );
  }
}
