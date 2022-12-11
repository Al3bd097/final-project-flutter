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
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return CodePage(
                      coode: Code.FrontEnds[index],
                    );
                  })));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      Code.FrontEnds[index].image,
                      height: 100,
                      width: 100,
                    ),
                    Text(Code.FrontEnds[index].name),
                    Text(Code.FrontEnds[index].description),
                  ],
                ),
              ),
              margin: EdgeInsets.only(top: 30, bottom: 30, right: 70, left: 70),
              padding: EdgeInsets.only(bottom: 100),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueAccent,
                  boxShadow: [
                    BoxShadow(color: Colors.orange, spreadRadius: 5)
                  ]),
            );
          }),
        ),
      ),
      backgroundColor: Colors.grey,
    );
  }
}
