import 'package:flutter/material.dart';
import 'package:loginpage/Screens/loginScreen.dart';
import 'package:loginpage/Utils/color_utils.dart';
import 'package:loginpage/Widgets/primaryBtn.dart';

class ResetLink extends StatelessWidget {
  const ResetLink({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child:
              Image.asset("assets/resetLinkIcon.png", height: 200, width: 200),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 50, left: 20, right: 20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: ColorUtils.field_background,
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Reset Link Sent",
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: ColorUtils.darkBlack),
            ),
            Text(
              "Reset link has been sent to the registered email.",
              style: TextStyle(color: ColorUtils.darkBlack, fontSize: 13),
            ),
            SizedBox(height: 20),
            PrimaryBtn(
                label: "Back to Login",
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => loginScreen()));
                })
          ],
        ),
      ),
    );
  }
}
