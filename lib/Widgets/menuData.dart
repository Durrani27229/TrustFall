import 'package:flutter/material.dart';
import 'package:loginpage/Utils/color_utils.dart';

class MenuData extends StatelessWidget {
  final title;
  final image;
  final VoidCallback? onTap;

  MenuData({
    this.title,
    this.image,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: ColorUtils.field_background,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Image.asset(
              image,
              height: 18,
              width: 18,
            ),
            SizedBox(width: 10),
            Text(
              title,
              style: TextStyle(
                  color: ColorUtils.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
