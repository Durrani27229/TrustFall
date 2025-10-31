import 'package:flutter/material.dart';
import 'package:loginpage/Utils/color_utils.dart';

class Myschedule extends StatefulWidget {
  final String time;
  final String day;
  bool toggle;
  Myschedule({required this.time, required this.day, this.toggle = false});

  @override
  State<Myschedule> createState() => _MyscheduleState();
}

class _MyscheduleState extends State<Myschedule> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15),
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: ColorUtils.field_background,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.time,
                  style: TextStyle(
                      color: ColorUtils.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      height: 1),
                ),
                Text(
                  widget.day,
                  style: TextStyle(color: ColorUtils.black, fontSize: 14),
                ),
              ],
            ),
          ),
          Transform.scale(
            scale: 0.8,
            child: Switch(
              activeColor: ColorUtils.white,
              activeTrackColor: ColorUtils.greenCheckmark,
              inactiveTrackColor: ColorUtils.lightGrey,
              inactiveThumbColor: ColorUtils.white,
              trackOutlineColor:
                  WidgetStatePropertyAll(ColorUtils.field_background),
              value: widget.toggle,
              onChanged: (value) {
                setState(() {
                  widget.toggle = !widget.toggle;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
