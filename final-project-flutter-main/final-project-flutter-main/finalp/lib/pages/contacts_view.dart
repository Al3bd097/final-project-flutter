import 'package:finalp/models/CODE.dart';
import 'package:finalp/models/CONTACT.dart';
import 'package:finalp/pages/Navigation.dart';
import 'package:finalp/pages/chat_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';

class ContactsView extends StatelessWidget {
  const ContactsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      backgroundColor: Color(0xff09051A),
      appBar: AppBar(
        title: Text("Developers"),
        backgroundColor: Color(0xff000000),
      ),
      body: Container(
          child: ListView.builder(
              itemCount: Code.AllEnds.length,
              itemBuilder: ((context, index) {
                return InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) {
                        return ChatPage();
                      })));
                    },
                    child: Container(
                      child: ListTile(
                        contentPadding: EdgeInsets.all(15),
                        leading: Transform.scale(
                          scale: 1.3,
                          child: Transform.scale(
                            scale: 1.0,
                            child: CircleAvatar(
                                backgroundImage: AssetImage(
                              Code.AllEnds[index].image,
                            )),
                          ),
                        ),
                        title: Text(
                          Code.AllEnds[index].name,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(Code.AllEnds[index].description),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        trailing: IconButton(
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xff4E32DD),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Color(0xff4E32DD), Color(0xff)]),
                          borderRadius: BorderRadius.circular(20)),
                    ));
              }))),
    );
  }
}
