import 'package:finalp/models/CODE.dart';
import 'package:finalp/models/CONTACT.dart';
import 'package:finalp/pages/chat_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ContactsView extends StatelessWidget {
  const ContactsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff09051A),
      appBar: AppBar(
        title: Text("Developers"),
        backgroundColor: Color(0xff000000),
      ),
      body: Container(
          child: ListView.builder(
              itemCount: Contact.contacts.length,
              itemBuilder: ((context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return ChatPage();
                    })));
                  },
                  child: Card(
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(300.0),
                          child: Image.asset(
                            Contact.contacts[0].image,
                            height: 70,
                            width: 70,
                          ),
                        ),
                        Column(
                          children: [
                            Text(Contact.contacts[index].name),
                            Text(Contact.contacts[index].description)
                          ],
                        )
                      ],
                    ),
                    color: Color(0xff4E32DD),
                  ),
                );
              }))),
    );
  }
}
