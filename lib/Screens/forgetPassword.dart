// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:loginpage/Screens/resetLink.dart';
import 'package:loginpage/Utils/color_utils.dart';
import 'package:loginpage/Widgets/InputField.dart';
import 'package:loginpage/Widgets/primaryBtn.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

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
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.only(top: 100),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/logo.png',
                  width: 64,
                  height: 64,
                ),
                SizedBox(height: 20),
                Text("Forget Password",
                    style:
                        TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text(
                    "Please enter your registered email. We will sent an reset email.",
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.2,
                      color: ColorUtils.darkBlack,
                    )),
                SizedBox(height: 10),
                InputField(
                  hintText: "Email address",
                  image: "assets/Letter.png",
                ),
                SizedBox(height: 40),
                PrimaryBtn(
                  label: "Send OTP",
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ResetLink()));
                  },
                ),
              ],
            )),
      ),
    );
  }
}
