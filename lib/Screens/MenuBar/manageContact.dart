import 'package:flutter/material.dart';
import 'package:loginpage/Utils/color_utils.dart';

class ManageContact extends StatefulWidget {
  const ManageContact({super.key});

  @override
  State<ManageContact> createState() => _ManageContactState();
}

class _ManageContactState extends State<ManageContact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Image.asset("assets/back.png", height: 44, width: 44),
            ),
            // SizedBox(width: 40),
            Text(
              "Manage Contact",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              width: 44,
              height: 44,
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Image.asset("assets/addBigIcon.png", height: 44, width: 44),
          ),
        ],
      ),
      body: Container(
        height: 60,
        width: double.infinity,
        margin: EdgeInsets.only(top: 15),
        padding: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          color: ColorUtils.field_background,
        ),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 20,
            )
          ],
        ),
      ),
    );
  }
}
