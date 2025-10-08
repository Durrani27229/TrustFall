import 'package:flutter/material.dart';

class PrimaryBtn extends StatelessWidget {
  String label;
  Color? bgBackground;
  VoidCallback onTap;
  PrimaryBtn(
      {required this.label,
      required this.onTap,
      this.bgBackground = Colors.blue});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: double.infinity,
          height: 57,
          decoration: BoxDecoration(
            color: bgBackground,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          )),
    );
  }
}
