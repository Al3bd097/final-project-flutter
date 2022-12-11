import 'package:finalp/models/CODE.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CodePage2 extends StatelessWidget {
  const CodePage2({super.key, required this.codes});
  final Code codes;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(codes.name)),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            codes.image,
            width: 200,
          ),
          Text(codes.name),
          Text(codes.description)
        ],
      )),
    );
  }
}
