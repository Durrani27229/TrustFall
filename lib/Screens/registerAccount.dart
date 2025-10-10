import 'package:flutter/material.dart';
import 'package:loginpage/Screens/loginScreen.dart';
import 'package:loginpage/Screens/splash.dart';
import 'package:loginpage/Utils/color_utils.dart';
import 'package:loginpage/Widgets/InputField.dart';
import 'package:loginpage/Widgets/primaryBtn.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({super.key});

  bool isRemember = false;

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(),
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account? "),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => loginScreen()));
                    },
                    child: Text("Login",
                        style: TextStyle(
                            color: ColorUtils.primaryColor,
                            fontWeight: FontWeight.w600))),
              ],
            ),
            SizedBox(height: 40),
          ],
        ),
        body: Container(
          margin: EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50),
                Image.asset("assets/logo.png", height: 64, width: 64),
                SizedBox(height: 20),
                Text(
                  "Register account",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                ),
                // SizedBox(height: 5),
                Text(
                  "Create an account by filling in the data below",
                  style: TextStyle(color: Color(0xFF101010)),
                ),
                SizedBox(height: 20),
                Column(
                  children: [
                    InputField(
                        hintText: "Alex Martin", image: "assets/user.png"),
                    SizedBox(height: 10),
                    InputField(
                      hintText: "alex.martin@example.com",
                      image: "assets/Letter.png",
                    ),
                    SizedBox(height: 10),
                    InputField(
                        hintText: "+12456 758 453", image: "assets/phone.png"),
                    SizedBox(height: 10),
                    InputField(
                        hintText: "Create Password",
                        image: "assets/Lock.png",
                        isPassword: true),
                    SizedBox(height: 10),
                    InputField(
                        hintText: "Create Password",
                        image: "assets/Lock.png",
                        isPassword: true),
                    SizedBox(height: 20),
                  ],
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Contain at least 1 uppercase letter, 8 characters, 1 number",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.5,
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(right: 10)),
                        SizedBox(
                          width: 24,
                          height: 35,
                          child: Checkbox(
                              value: widget.isRemember,
                              activeColor: ColorUtils.primaryColor,
                              onChanged: (value) {
                                widget.isRemember = !widget.isRemember;
                                setState(() {});
                              }),
                        ),
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "I have read & agree with the Terms & Condition and",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 12),
                            ),
                            Text("Privacy Policy",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 12))
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    PrimaryBtn(
                        label: "Register",
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => splashScreen()));
                        }),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
