import 'package:flutter/material.dart';
import 'package:loginpage/Screens/forgetPassword.dart';
import 'package:loginpage/Screens/home.dart';
import 'package:loginpage/Screens/registerAccount.dart';
import 'package:loginpage/Screens/splash.dart';
import 'package:loginpage/Utils/color_utils.dart';
import 'package:loginpage/Widgets/primaryBtn.dart';

class loginScreen extends StatefulWidget {
  loginScreen({super.key});

  bool isPassword = false;

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          leading: SizedBox(),
        ),
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterScreen()));
                  },
                  child: Text(
                    "Create account",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: ColorUtils.primaryColor),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
        body: Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xFFF2F2F2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    "assets/logo.png",
                    height: 50,
                    // width: 64,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Login to your accoount",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 5),
                Text(
                  "Create an account by filling in the data below",
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: ColorUtils.field_background,
                    hintText: "Username or Email address",
                    prefixIcon: Icon(
                      Icons.email,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          BorderSide.none, // Keeps shape but hides border line
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                    obscureText: widget.isPassword,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: ColorUtils.field_background,
                        hintText: "Password",
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide
                              .none, // Keeps shape but hides border line
                        ),
                        prefixIcon: Icon(
                          Icons.lock,
                        ),
                        suffix: GestureDetector(
                          onTap: () {
                            print(
                                "==============> ontap: ${widget.isPassword}");
                            widget.isPassword = !widget.isPassword;
                            setState(() {});
                          },
                          child: Icon(
                            widget.isPassword
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ))),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgetPassword()));
                      },
                      child: Text(
                        "Forget Password?",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                PrimaryBtn(
                    label: "Login",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    }),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    "Or",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                PrimaryBtn(
                  label: "Continue With Apple",
                  onTap: () {},
                  image: "assets/apple.png",
                  textColor: Colors.black,
                  bgBackground: ColorUtils.field_background,
                ),
                SizedBox(
                  height: 10,
                ),
                PrimaryBtn(
                  label: "Continue With Google",
                  onTap: () {},
                  image: "assets/google.png",
                  textColor: Colors.black,
                  bgBackground: ColorUtils.field_background,
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
