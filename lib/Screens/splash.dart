import 'package:flutter/material.dart';
import 'package:loginpage/Screens/loginScreen.dart';
import 'package:loginpage/Widgets/primaryBtn.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/logo.png",
                height: 116,
              ),
            ),
            Text(
              "Trustfall",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            Text("Here to catch you", style: TextStyle(fontSize: 18)),
          ],
        ),
        bottomSheet: Container(
          margin: EdgeInsets.only(bottom: 50, left: 20, right: 20),
          child: PrimaryBtn(
              label: "Get Started",
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => loginScreen()));
              }),
        ));
  }
}
