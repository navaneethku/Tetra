import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class UserDash extends StatelessWidget {
  const UserDash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Good Morning",
                style: TextStyle(fontSize: 24),
              ),
            ),
            Container(
              height: 400,
              child: GridView.extent(
                maxCrossAxisExtent: 300,
                children: <Widget>[
                  Image.asset("lib/Assets/pdf.png"),
                  Image.asset("lib/Assets/pdf.png"),
                  Image.asset("lib/Assets/pdf.png"),
                  Image.asset("lib/Assets/pdf.png"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
