import 'package:flutter/material.dart';
import 'package:loginpage/Screens/editAccount.dart';
import 'package:loginpage/Utils/color_utils.dart';
import 'package:loginpage/Widgets/InputField.dart';
import 'package:loginpage/Widgets/primaryBtn.dart';

class DeleteAccount extends StatefulWidget {
  const DeleteAccount({super.key});

  @override
  State<DeleteAccount> createState() => _DeleteAccountState();
}

class _DeleteAccountState extends State<DeleteAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              padding: EdgeInsets.only(top: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context); // 👈 go back or close drawer
                    },
                    child: Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        color: ColorUtils.field_background,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/leftArrow.png",
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "My Account",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: ColorUtils.black),
                  ),
                  Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      color: ColorUtils.field_background,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EditAccount()));
                        },
                        child: Image.asset(
                          "assets/pen.png",
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
                child: Container(
              width: 154,
              height: 154,
              child: Image.asset(
                "assets/davis.png",
                width: 154,
                height: 154,
              ),
            )),
            SizedBox(height: 10),
            Center(
              child: Text(
                "Baker Davis",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: ColorUtils.black),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  InputField(hintText: "Baker Davis", image: "assets/user.png"),
                  SizedBox(height: 10),
                  InputField(
                      hintText: "alex.martin@example.com",
                      image: "assets/Letter.png"),
                  SizedBox(height: 10),
                  InputField(
                      hintText: "+1 2456 758 453", image: "assets/phone.png"),
                  SizedBox(height: 10),
                  InputField(
                      hintText: "1600 Trail ridfe, Dr Dallas Tx, 75224",
                      image: "assets/map.png"),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 20, left: 20, right: 20),
        child: PrimaryBtn(label: "Delete Account", onTap: () {}),
      ),
    );
  }
}
