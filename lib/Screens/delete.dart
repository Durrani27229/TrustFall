import 'package:flutter/material.dart';
import 'package:loginpage/Screens/splash.dart';
import 'package:loginpage/Utils/color_utils.dart';
import 'package:loginpage/Widgets/primaryBtn.dart';

class Delete extends StatelessWidget {
  const Delete({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: AppBar(
            automaticallyImplyLeading: false,
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
              "Delete Account",
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
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 80,
              ),
              Image.asset(
                "assets/deleteIcon.png",
                width: 150,
                height: 150,
              ),
              Text(
                "Are you sure",
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: ColorUtils.black),
              ),
              Text("you want to delete this account?",
                  style: TextStyle(fontSize: 16, color: ColorUtils.black)),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 50, left: 20, right: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            PrimaryBtn(
              label: "Yes,Delete Account",
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => splashScreen()));
              },
              bgBackground: ColorUtils.red,
              textColor: ColorUtils.white,
            ),
            SizedBox(
              height: 10,
            ),
            PrimaryBtn(
              label: "No,Deactivate Instead",
              onTap: () {},
              bgBackground: ColorUtils.white,
              textColor: ColorUtils.red,
              borderColor: ColorUtils.red,
            ),
          ],
        ),
      ),
    );
  }
}
