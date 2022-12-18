import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tetra/pages/user_dashboard.dart';

class MedicineReminder extends StatefulWidget {
  const MedicineReminder({Key? key}) : super(key: key);

  @override
  State<MedicineReminder> createState() => _MedicineReminderState();
}

class _MedicineReminderState extends State<MedicineReminder> {
  TimeOfDay selectedTime = TimeOfDay.now();
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
            child: Column(children: [
          Text(
            "Medicine Reminder",
            style: TextStyle(fontSize: 24),
          ),
          Container(child: Column(children: [ListTile(
            title: Text("Medicine Name"),
          ),
          ListTile(
            title: Text("No.of pills"),
          ),
          ExpansionTile(
            leading: Icon(Icons.add),
            title: Text("Set Time"),
            children: [
                        Icon(Icons.punch_clock),
            ],
          ),
          ]),),
        ])));
  }
}
