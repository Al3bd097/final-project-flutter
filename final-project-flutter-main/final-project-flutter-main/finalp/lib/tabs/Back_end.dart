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
          itemCount: Code.BackEnds.length,
          itemBuilder: ((context, index) {
            return Container(
              // ignore: sort_child_properties_last
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return CodePage2(
                      codes: Code.BackEnds[index],
                    );
                  })));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            Code.BackEnds[index].image,
                            height: 40,
                            width: 40,
                          ),
                          Text(
                            Code.BackEnds[index].name,
                            style: TextStyle(
                                color: Color(0xff4E32DD), fontSize: 22),
                          ),
                        ],
                      ),
                      margin: EdgeInsets.all(10),
                    ),
                    Text(
                      Code.BackEnds[index].description,
                      style: TextStyle(color: Colors.white.withOpacity(0.8)),
                    ),
                  ],
                ),
              ),
              height: 170,
              margin: EdgeInsets.only(top: 30, bottom: 20, right: 20, left: 20),
              padding: EdgeInsets.only(bottom: 40),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(Code.FrontEnds[index].imageBg),
                      fit: BoxFit.cover),
                  boxShadow: [
                    BoxShadow(color: Color(0xff4E32DD), spreadRadius: 1.8),
                  ]),
            );
          }),
        ),
        color: Color(0xff09051A),
      ),
    );
  }
}
