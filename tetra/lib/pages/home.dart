import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tetra/pages/homepage.dart';
import 'package:tetra/pages/user_dashboard.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _isVisible = true;

  void showToast() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Container(
            child: SingleChildScrollView(
              child: Column(children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Hi,",
                            style: TextStyle(
                                fontSize: 32, color: Color(0xff00aeef)),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Akhil Paul",
                          style: TextStyle(fontSize: 24, color: Colors.black),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const UserDash()),
                            );
                          },
                          child: Image.asset(
                            "lib/Assets/user.png",
                            width: 75,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Daily Log"),
                        ],
                      ),
                    ),
                    Container(
                      child: ExpansionTile(
                        title: Text("Daily Food Intake",
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            )),
                        children: [
                          Visibility(
                            visible: _isVisible,
                            child: Container(
                              child: Column(
                                children: [
                                  TextField(
                                    decoration: InputDecoration(
                                        hintText: '1551g',
                                        label: Text("Oily Food")),
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                        hintText: '1551g',
                                        label: Text("Fast Food")),
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                        hintText: '1551g',
                                        label: Text("Salad")),
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                        hintText: '1551g',
                                        label: Text("Desssert")),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text("Submit"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      child: ExpansionTile(
                        title: Text("Daily Scheduled Intake",
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            )),
                        children: [
                          Visibility(
                            visible: _isVisible,
                            child: Container(
                              child: Column(
                                children: [
                                  TextField(
                                    decoration: InputDecoration(
                                        hintText: '5glasses',
                                        label: Text("Water Intake")),
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                        hintText: "hours",
                                        label: Text("Sleep Time")),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text("Submit"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: ExpansionTile(
                        title: Text("Exercise",
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            )),
                        children: [
                          Visibility(
                            visible: _isVisible,
                            child: Container(
                              child: Column(
                                children: [
                                  TextField(
                                    decoration: InputDecoration(
                                        hintText: '50(min)',
                                        label: Text("Hard")),
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                        hintText: '30(min)',
                                        label: Text("Avg")),
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                        hintText: '15(min)',
                                        label: Text("Low")),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text("Submit"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text("Exercise"),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text("Diet"),
                        ),
                      ],
                    )
                  ],
                ),
                Text("Medicinal Equipment shop"),
                IconButton(
                    color: Colors.black,
                    icon: Icon(Icons.shop),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                      );
                    }),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
