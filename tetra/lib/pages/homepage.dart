import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'labreport.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.person)],
      ),
      body: SafeArea(
        child: Container(
          child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        "lib/Assets/homeimg1.png",
                        height: 120,
                      ),
                      Image.asset(
                        "lib/Assets/homeimg2.png",
                        height: 120,
                      )
                    ],
                  ),
                ],
              ),
              Column(
                children: [Text("Good Morning")],
              ),
              Column(
                children: [
                  Row(),
                  Row(),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 70,
                      ),
                      Text("Lab Report Analysis"),
                      TextButton(
                        onPressed: () => LabReport(),
                        child: Image.asset(
                          "lib/Assets/link1.png",
                          height: 50,
                        ),
                      )
                    ],
                  ),
                  Row(children: [
                    SizedBox(
                      width: 70,
                    ),
                    Text("Medicine Reminder"),
                    TextButton(
                      onPressed: () => LabReport(),
                      child: Image.asset("lib/Assets/link2.png", height: 50),
                    )
                  ])
                ],
              ),
              Row(),
            ],
          ),
        ),
      ),
    );
  }
}
