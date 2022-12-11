import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FrontEnd extends StatelessWidget {
  const FrontEnd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("Hello Tab 1"),
          ],
        ),
      ),
    );
  }
}
