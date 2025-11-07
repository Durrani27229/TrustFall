import 'package:flutter/material.dart';
import 'package:loginpage/Screens/MenuBar/faq.dart';
import 'package:loginpage/Screens/MenuBar/manageContact.dart';
import 'package:loginpage/Screens/MenuBar/manageSubscription.dart';
import 'package:loginpage/Screens/MenuBar/privacy.dart';
import 'package:loginpage/Screens/MenuBar/schedule.dart';
import 'package:loginpage/Screens/MenuBar/terms.dart';
import 'package:loginpage/Screens/deleteAccount.dart';
import 'package:loginpage/Utils/color_utils.dart';
import 'package:loginpage/Widgets/checkIn.dart';
import 'package:loginpage/Widgets/menuData.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});
  final checkInData = [
    {
      'date': "1st Aug , 2025",
      'time': "02:45 AM",
    },
    {
      'date': "1st Aug , 2025",
      'time': "02:45 AM",
    },
    {
      'date': "1st Aug , 2025",
      'time': "02:45 AM",
    },
    {
      'date': "1st Aug , 2025",
      'time': "02:45 AM",
    },
    {
      'date': "1st Aug , 2025",
      'time': "02:45 AM",
    },
    {
      'date': "1st Aug , 2025",
      'time': "02:45 AM",
    },
    {
      'date': "1st Aug , 2025",
      'time': "02:45 AM",
    },
    {
      'date': "1st Aug , 2025",
      'time': "02:45 AM",
    }
  ];

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  bool toggle = false;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: widget.scaffoldKey,
      drawer: Drawer(
          backgroundColor: Colors.white,
          width: double.infinity,
          child: Column(children: [
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                widget.scaffoldKey.currentState?.closeDrawer();
                              },
                              child: Image.asset(
                                "assets/cancel.png",
                                height: 44,
                                width: 44,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Menu",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: ColorUtils.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(children: [
                      MenuData(
                        image: "assets/user1.png",
                        title: "Manage Contacts",
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ManageContact()));
                        },
                      ),
                      MenuData(
                        image: "assets/schedule.png",
                        title: "Manage Schedule",
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MySchedule()));
                        },
                      ),
                      MenuData(
                        image: "assets/subscription.png",
                        title: "Manage Subscription",
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ManageSubscription()));
                        },
                      ),
                      MenuData(
                        image: "assets/setting.png",
                        title: "Settings",
                      ),
                      MenuData(
                        image: "assets/faq.png",
                        title: "FAQs",
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Faq()));
                        },
                      ),
                      MenuData(
                        image: "assets/terms.png",
                        title: "Terms & Condition",
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TermsAndCondition()));
                        },
                      ),
                      MenuData(
                        image: "assets/privacy.png",
                        title: "Privacy Policy",
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PrivacyPolicy()));
                        },
                      ),
                      MenuData(
                        image: "assets/trash.png",
                        title: "Delete Account",
                      ),
                    ]),
                  ),
                ],
              ),
            ),
            MenuData(
              image: "assets/logout.png",
              title: "Logout",
            ),
            SizedBox(height: 20)
          ])),
      appBar: AppBar(
        leadingWidth: 80,
        leading: GestureDetector(
          onTap: () {
            widget.scaffoldKey.currentState?.openDrawer();
          },
          child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Image.asset("assets/menuBtn.png", height: 24, width: 24)),
        ),
        title: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => DeleteAccount()));
          },
          child: Row(
            children: [
              Image.asset("assets/profile.png", height: 45, width: 45),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello",
                    style: TextStyle(color: ColorUtils.black),
                  ),
                  Text(
                    "Baker Davis",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: ColorUtils.black),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.only(left: 20, right: 5),
              width: double.infinity,
              decoration: BoxDecoration(
                color: ColorUtils.field_background,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Toggle Activiy",
                    style: TextStyle(color: ColorUtils.black),
                  ),
                  Transform.scale(
                    scale: 0.7,
                    child: Switch(
                        activeColor: ColorUtils.primaryColor,
                        activeTrackColor: ColorUtils.white,
                        inactiveTrackColor: ColorUtils.lightGrey,
                        inactiveThumbColor: ColorUtils.white,
                        trackOutlineColor: WidgetStateProperty.all<Color>(
                            ColorUtils.lightGrey),
                        trackOutlineWidth: MaterialStateProperty.all(0),
                        value: widget.toggle,
                        onChanged: (value) {
                          widget.toggle = !widget.toggle;
                          setState(() {});
                        }),
                  )
                ],
              ),
            ),
            SizedBox(height: 50),
            Center(
              child: Container(
                alignment: Alignment.center,
                height: 184,
                width: 184,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorUtils.darkGrey,
                ),
                child: Text("Check in",
                    style: TextStyle(
                        color: ColorUtils.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                "Your next Check-In is at\n08:30 AM Monday ",
                textAlign: TextAlign.center,
                style: TextStyle(color: ColorUtils.black),
              ),
            ),
            // Text(
            //   "",
            //   style: TextStyle(color: ColorUtils.black),
            // ),
            SizedBox(height: 30),
            Text(
              "Recent Activity",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: ColorUtils.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Text("Your recent record of your activity.",
                style: TextStyle(color: ColorUtils.black, fontSize: 12)),
            SizedBox(height: 10),
            Expanded(
              child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(height: 8),
                  itemCount: widget.checkInData.length,
                  itemBuilder: (context, index) {
                    final data = widget.checkInData[index];
                    return CheckIn(
                        firstText: data['date'] ?? "",
                        secondText: data['time'] ?? "");
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
