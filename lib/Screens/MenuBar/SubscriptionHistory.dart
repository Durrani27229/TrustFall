import 'package:flutter/material.dart';
import 'package:loginpage/Utils/color_utils.dart';
import 'package:loginpage/Widgets/card.dart';

class SubsriptionHistory extends StatefulWidget {
  const SubsriptionHistory({super.key});

  @override
  State<SubsriptionHistory> createState() => _SubsriptionHistoryState();
}

class _SubsriptionHistoryState extends State<SubsriptionHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: AppBar(
              // automaticallyImplyLeading: false,
              leading: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Image.asset("assets/back.png", height: 44, width: 44),
                ),
              ),
              centerTitle: true,
              title: Text(
                "Subscription History",
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
            padding: EdgeInsets.only(left: 30, right: 30, top: 30),
            child: ListView(
              children: [
                PackageCard(
                  packageName: "Package",
                  duration: "Monthly",
                  amount: "\$5.00",
                  startDate: "Jun 12,2025",
                  borderColor: "borderColor",
                ),
                PackageCard(
                  packageName: "Package",
                  duration: "Monthly",
                  amount: "\$5.00",
                  startDate: "Jun 12,2025",
                  borderColor: "borderColor",
                ),
                PackageCard(
                  packageName: "Package",  
                  duration: "Monthly",
                  amount: "\$5.00",
                  startDate: "Jun 12,2025",
                  borderColor: "borderColor",
                ),
                PackageCard(
                  packageName: "Package",
                  duration: "Monthly",
                  amount: "\$5.00",
                  startDate: "Jun 12,2025",
                  borderColor: "borderColor",
                ),
              ],
            )));
  }
}
