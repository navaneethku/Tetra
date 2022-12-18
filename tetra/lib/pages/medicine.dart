import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'medicinereminder.dart';
import 'user_dashboard.dart';

class Medicine extends StatefulWidget {
  const Medicine({Key? key}) : super(key: key);

  @override
  State<Medicine> createState() => _MedicineState();
}

class _MedicineState extends State<Medicine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UserDash(),
                    ));
              },
              child: Icon(
                Icons.person,
                color: Colors.black,
              ))
        ],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(children: [
            Text(
              "Medicine Reminder",
              style: TextStyle(fontSize: 24),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MedicineReminder(),
                    ));
              },
              child: ListTile(
                dense: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25))),
                tileColor: Color(0xf02f0ff),
                leading: Image.asset("lib/Assets/medicine.png"),
                title: Text("Medicine Name"),
                subtitle: Text("1Pill"),
                trailing: Text("9:AM|1:00PM|8:00PM"),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MedicineReminder(),
                    ));
              },
              child: ListTile(
                dense: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25))),
                tileColor: Color(0xf02f0ff),
                leading: Image.asset("lib/Assets/medicine.png"),
                title: Text("Medicine Name"),
                subtitle: Text("1Pill"),
                trailing: Text("9:AM|1:00PM|8:00PM"),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MedicineReminder(),
                    ));
              },
              child: ListTile(
                dense: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25))),
                tileColor: Color(0xf02f0ff),
                leading: Image.asset("lib/Assets/medicine.png"),
                title: Text("Medicine Name"),
                subtitle: Text("1Pill"),
                trailing: Text("9:AM|1:00PM|8:00PM"),
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              dense: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                      bottomLeft: Radius.circular(25))),
              tileColor: Color(0xf02f0ff),
              leading: Image.asset("lib/Assets/medicine.png"),
              title: Text("Medicine Name"),
              subtitle: Text("1Pill"),
              trailing: Text("9:AM|1:00PM|8:00PM"),
            )
          ]),
        ),
      ),
    );
  }
}
