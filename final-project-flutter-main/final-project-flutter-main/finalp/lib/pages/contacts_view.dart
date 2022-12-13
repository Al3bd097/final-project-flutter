import 'package:finalp/models/CODE.dart';
import 'package:finalp/models/CONTACT.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ContactsView extends StatelessWidget {
  const ContactsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff09051A),
      appBar: AppBar(title: Text("Developers")),
      body: Container(
          child: ListView.builder(
              itemCount: Contact.contacts.length,
              itemBuilder: ((context, index) {
                return Card(
                  child: Row(
                    children: [
                      Image.asset(Contact.contacts[0].image),
                      Column(
                        children: [
                          Text(Contact.contacts[0].name),
                          Text(Contact.contacts[0].description)
                        ],
                      )
                    ],
                  ),
                );
              }))),
    );
  }
}
