import 'package:flutter/material.dart';
import 'package:loginpage/Utils/color_utils.dart';

class PackageCard extends StatelessWidget {
  final String packageName;
  final String duration;
  final String amount;
  final String startDate;
  final String borderColor;
  const PackageCard(
      {super.key,
      required this.packageName,
      required this.duration,
      required this.amount,
      required this.startDate,
      required this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 182,
      width: double.infinity,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        border: Border.all(color: ColorUtils.borderGrey, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            packageName,
            style: TextStyle(
                color: ColorUtils.primaryColor,
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),
          Text(
            duration,
            style: TextStyle(
                color: ColorUtils.black,
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Start Date",
                    style: TextStyle(
                        color: ColorUtils.slate,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    startDate,
                    style: TextStyle(
                        color: ColorUtils.slate,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Amount Paid",
                    style: TextStyle(
                        color: ColorUtils.slate,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    amount,
                    style: TextStyle(
                        color: ColorUtils.slate,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
