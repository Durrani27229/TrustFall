import 'package:flutter/material.dart';
import 'package:loginpage/Utils/color_utils.dart';
import 'package:loginpage/Widgets/mySchedule.dart';

class MySchedule extends StatefulWidget {
  // const MySchedule({super.key});
  List myScheduleList = [
    {
      "time": "06:30 AM",
      "day": "Daily",
      "toggle": true,
    },
    {
      "time": "02:00 PM",
      "day": "Daily",
    },
    {
      "time": "10:00 AM",
      "day": "Daily",
      "toggle": true,
    },
    {
      "time": "05:00 PM",
      "day": "Daily",
    },
    {
      "time": "06:30 AM",
      "day": "Daily",
    },
  ];
  @override
  State<MySchedule> createState() => _MyScheduleState();
}

class _MyScheduleState extends State<MySchedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: AppBar(
            // automaticallyImplyLeading: false,
            leading: GestureDetector(
              onTap: () {
                print("this button working");
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Image.asset("assets/back.png", height: 44, width: 44),
              ),
            ),
            centerTitle: true,
            title: Text(
              "My Schedule",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            // Myschedule(
            //   time: "06:30 AM",
            //   day: "Daily",
            //   toggle: true,
            // ),
            // Myschedule(time: "02:00 PM", day: "Daily"),
            // Myschedule(time: "10:00 AM", day: "Daily"),
            // Myschedule(
            //   time: "05:00 PM",
            //   day: "Daily",
            //   toggle: true,
            // ),
            // Myschedule(time: "06:30 AM", day: "Daily"),
            ListView.separated(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: widget.myScheduleList.length,
              separatorBuilder: (context, index) => SizedBox(
                height: 5,
              ),
              itemBuilder: (context, index) {
                final item = widget.myScheduleList[index];
                return Myschedule(
                  time: item["time"],
                  day: item["day"],
                  initialToggle: item["toggle"] ?? false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
