import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class UserDash extends StatelessWidget {
  const UserDash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Container(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "lib/Assets/dash1.jpeg",
            fit: BoxFit.cover,
          ),
          Image.asset(
            "lib/Assets/dash2.jpeg",
            fit: BoxFit.cover,
          ),
        ],
      ))),
    );
  }
}
