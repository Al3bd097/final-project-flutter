import 'package:finalp/models/CODE.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CodePage extends StatelessWidget {
  const CodePage({super.key, required this.coode});
  final Code coode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(coode.name)),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            coode.image,
            width: 200,
          ),
          Text(coode.name),
          Text(coode.description)
        ],
      )),
    );
  }
}
