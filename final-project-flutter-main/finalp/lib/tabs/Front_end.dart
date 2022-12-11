import 'package:finalp/models/CODE.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FrontEnd extends StatelessWidget {
  const FrontEnd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: Code.FrontEnds.length,
      itemBuilder: ((context, index) {
        return Container(
          child: Card(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                Code.FrontEnds[index].image,
                height: 100,
                width: 100,
              ),
              Text(Code.FrontEnds[index].name),
              Text(Code.FrontEnds[index].description),
              Container(
                child: Text("->"),
                decoration: BoxDecoration(color: Colors.red),
                padding: EdgeInsets.all(10),
              )
            ],
          )),
        );
      }),
    ));
  }
}
