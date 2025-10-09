import 'package:flutter/material.dart';

class PrimaryBtn extends StatelessWidget {
  String label;
  String image;
  Color? textColor;
  Color? bgBackground;
  VoidCallback onTap;
  PrimaryBtn(
      {required this.label,
      required this.onTap,
      this.textColor = Colors.white,
      this.image = "",
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (image != "") Image.asset(image, height: 18, width: 18),
                if (image != "") SizedBox(width: 10),
                Text(
                  label,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
