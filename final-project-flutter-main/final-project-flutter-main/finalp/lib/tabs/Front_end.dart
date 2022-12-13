import 'package:finalp/models/CODE.dart';
import 'package:finalp/pages/code_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FrontEnd extends StatelessWidget {
  const FrontEnd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemCount: Code.FrontEnds.length,
          itemBuilder: ((context, index) {
            return Container(
              // ignore: sort_child_properties_last
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return CodePage(
                      coode: Code.FrontEnds[index],
                    );
                  })));
                },
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          // ignore: sort_child_properties_last
                          child: Image.asset(
                            Code.FrontEnds[index].image,
                            height: 100,
                            width: 100,
                          ),
                          margin:
                              // ignore: prefer_const_constructors
                              EdgeInsets.only(bottom: 10, right: 20, top: 20),
                        ),
                        Text(
                          Code.FrontEnds[index].name,
                          style:
                              TextStyle(color: Color(0xfffca311), fontSize: 30),
                        ),
                      ],
                    ),
                    Text(Code.FrontEnds[index].description),
                  ],
                ),
              ),
              margin: EdgeInsets.only(top: 30, bottom: 20, right: 20, left: 20),
              padding: EdgeInsets.only(bottom: 40),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffe5e5e5),
                  boxShadow: [
                    BoxShadow(color: Color(0xff482bc4), spreadRadius: 5)
                  ]),
            );
          }),
        ),
      ),
      backgroundColor: Color(0xff09051a),
    );
  }
}
