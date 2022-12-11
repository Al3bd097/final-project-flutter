import 'package:finalp/models/CODE.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CodePage extends StatelessWidget {
  const CodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(Code.FrontEnds[0].name)),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            Code.FrontEnds[0].image,
            width: 200,
          ),
          Text(Code.FrontEnds[0].name),
          Text(Code.FrontEnds[0].description)
        ],
      )),
    );
  }
}
