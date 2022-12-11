import 'package:finalp/pages/code_page_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models/CODE.dart';

class BackEnd extends StatelessWidget {
  const BackEnd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemCount: Code.FrontEnds.length,
          itemBuilder: ((context, index) {
            return Container(
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return CodePage2(
                      codes: Code.BackEnds[index],
                    );
                  })));
                },
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          child: Image.asset(
                            Code.BackEnds[index].image,
                            height: 100,
                            width: 100,
                          ),
                          margin:
                              EdgeInsets.only(bottom: 10, right: 20, top: 20),
                        ),
                        Text(
                          Code.BackEnds[index].name,
                          style:
                              TextStyle(color: Color(0xfffca311), fontSize: 30),
                        ),
                      ],
                    ),
                    Text(Code.BackEnds[index].description),
                  ],
                ),
              ),
              margin: EdgeInsets.only(top: 30, bottom: 20, right: 20, left: 20),
              padding: EdgeInsets.only(bottom: 40),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffe5e5e5),
                  boxShadow: [
                    BoxShadow(color: Color(0xfffca311), spreadRadius: 5)
                  ]),
            );
          }),
        ),
      ),
      backgroundColor: Color(0xff14213d),
    );
  }
}
