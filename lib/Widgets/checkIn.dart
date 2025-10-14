import 'package:flutter/material.dart';
import 'package:loginpage/Utils/color_utils.dart';

class CheckIn extends StatelessWidget {
  String firstText;
  String secondText;
  CheckIn({required this.firstText, required this.secondText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorUtils.field_background,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Check in",
              style: TextStyle(
                  color: ColorUtils.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              spacing: 10,
              children: [
                Text(firstText,
                    style: TextStyle(color: ColorUtils.black, fontSize: 12)),
                Image.asset("assets/dot.png", height: 5, width: 5),
                Text(secondText,
                    style: TextStyle(color: ColorUtils.black, fontSize: 12))
              ],
            )
          ],
        ),
      ),
    );
  }
}
