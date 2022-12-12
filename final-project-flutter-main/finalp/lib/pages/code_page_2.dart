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
      appBar: AppBar(
        title: Text(Code.FrontEnds[0].name),
        backgroundColor: Color(0xff000000),
      ),
      body: Container(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              codes.image,
              width: 180,
            ),
            Text(
              codes.name,
              style: TextStyle(fontSize: 30, color: Color(0xffe5e5e5)),
            ),
            Text(
              codes.description,
              style: TextStyle(fontSize: 20, color: Color(0xffe5e5e5)),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Videos",
                    style: TextStyle(
                      fontSize: 40,
                      color: Color(0xff14213d),
                    ),
                  ),
                  Text(
                    ">",
                    style: TextStyle(fontSize: 40),
                  )
                ],
              ),
              margin: EdgeInsets.only(top: 50, right: 10, left: 10),
              decoration: BoxDecoration(
                  color: Color(0xffe5e5e5),
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(15),
            )
          ],
        )),
        color: Color(0xff14213d),
      ),
    );
  }
}
