import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:url_launcher/link.dart';

class ContactUs extends StatefulWidget {
  ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final name = TextEditingController();

  final email = TextEditingController();

  final description = TextEditingController();

  @override
  void initState() {
    super.initState();

    name.addListener(() => setState(() {}));
    email.addListener(() => setState(() {}));
    description.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.amber,
      backgroundColor: Color(0xff09051a),
      appBar: AppBar(
        title: Text("Contact Us"),
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: EdgeInsets.only(bottom: 60),
        child: Column(
          children: [
            Text(
              "Send us an Email",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            Image.asset(
              "assets/images/paper-airplane-icon copy.png",
              width: 250,
              height: 250,
            ),

            ///
            /// Name
            ///
            Container(
              margin: EdgeInsets.only(left: 40, right: 40, bottom: 15),
              child: TextField(
                controller: name,
                style: TextStyle(color: Colors.grey),
                decoration: InputDecoration(
                    labelText: "Name",
                    labelStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.grey,
                    ),
                    suffixIcon: name.text.isEmpty
                        ? Container(width: 0)
                        : IconButton(
                            onPressed: () => name.clear(),
                            icon: Icon(Icons.close)),
                    hintText: "<Coder/>",
                    hintStyle: TextStyle(color: Colors.grey),
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
            /// Email
            ///
            Container(
              margin: EdgeInsets.only(left: 40, right: 40, bottom: 15),
              child: TextField(
                controller: email,
                style: TextStyle(color: Colors.grey),
                decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(
                      Icons.mail,
                      color: Colors.grey,
                    ),
                    suffixIcon: email.text.isEmpty
                        ? Container(width: 0)
                        : IconButton(
                            onPressed: () => email.clear(),
                            icon: Icon(Icons.close)),
                    hintText: "name@example.com",
                    hintStyle: TextStyle(color: Colors.grey),
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
            /// Description
            ///
            Container(
              margin: EdgeInsets.only(left: 40, right: 40, bottom: 15),
              child: TextField(
                controller: description,
                style: TextStyle(color: Colors.grey),
                decoration: InputDecoration(
                    labelText: "Description",
                    labelStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(
                      Icons.article,
                      color: Colors.grey,
                    ),
                    suffixIcon: description.text.isEmpty
                        ? Container(width: 0)
                        : IconButton(
                            onPressed: () => description.clear(),
                            icon: Icon(Icons.close)),
                    hintText: "Hello, i wanted to ask...",
                    hintStyle: TextStyle(color: Colors.grey),
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
            ///
            ///
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff4E32DD),
                    minimumSize: Size(350, 40)),
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
            Container(
              margin: EdgeInsets.all(10),
              child: Divider(
                color: Colors.grey,
                thickness: 1.2,
                indent: 15,
                endIndent: 15,
              ),
            ),
            Text(
              "Or",
              style: TextStyle(fontSize: 35, color: Colors.white),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                "Live chat with our Agents on whatsapp",
                style: TextStyle(color: Colors.white, fontSize: 19),
              ),
            ),
            Link(
                target: LinkTarget.blank,
                uri: Uri.parse("https://wa.link/543bqg"),
                builder: (context, followLink) => GestureDetector(
                    onTap: followLink,
                    child: Image.asset(
                      "assets/images/WhatsApp_icon copy.png",
                      width: 68,
                      height: 68,
                    ))),
          ],
        ),
      ),
    );
  }
}
