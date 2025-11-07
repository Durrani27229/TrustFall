import 'package:flutter/material.dart';
import 'package:loginpage/Utils/color_utils.dart';

Widget _buildPlanCard(String title, String price, {bool isPopular = false}) {
  return Container(
    width: 292,
    decoration: BoxDecoration(
      border: Border.all(
        color: ColorUtils.borderGrey,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(22),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (isPopular)
                Text(
                  "Popular",
                  style: TextStyle(
                    color: ColorUtils.black,
                    fontWeight: FontWeight.bold,
                  ),
                )
              else
                SizedBox(), // empty space if not popular
              if (isPopular)
                Image.asset(
                  "assets/tick.png",
                  height: 24,
                  width: 24,
                )
              else
                SizedBox(),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            title,
            style: TextStyle(
              color: ColorUtils.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, bottom: 10),
          child: Text(
            price,
            style: TextStyle(
              color: ColorUtils.slate,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
  );
}