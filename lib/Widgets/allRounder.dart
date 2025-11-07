import 'package:flutter/material.dart';
import 'package:loginpage/Utils/color_utils.dart';

class AllRounder extends StatefulWidget {
  final String title;
  final String image;

  AllRounder({
    required this.title,
    this.image = "",
  });

  @override
  State<AllRounder> createState() => _AllRounderState();
}

class _AllRounderState extends State<AllRounder> {
  @override
  Widget build(BuildContext context) {
    return
        // Container(

        //   padding: EdgeInsets.all(20),
        //   height: 60,
        //   width: double.infinity,
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(22),
        //     color: ColorUtils.field_background,
        //   ),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //       Padding(
        //         padding: const EdgeInsets.only(left: 8.0),
        //         child: Text(
        //           widget.title,
        //         ),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.only(right: 8.0),
        //         child: widget.image != ""
        //             ? Image.asset(widget.image, height: 20, width: 20)
        //             : null,
        //       )
        //     ],
        //   ),
        // );
        //     SizedBox(
        //   height: 60,
        //   width: double.infinity,
        //   child: TextField(
        //     decoration: InputDecoration(
        //       contentPadding: EdgeInsets.only(left: 20, right: 20),
        //       fillColor: ColorUtils.field_background,
        //       filled: true,
        //       hintText: widget.title,
        //       hintStyle: TextStyle(fontSize: 14, color: ColorUtils.black),
        //       border: OutlineInputBorder(
        //           borderRadius: BorderRadius.circular(20),
        //           borderSide: BorderSide.none),
        //       focusedBorder: OutlineInputBorder(
        //         borderRadius: BorderRadius.circular(20),
        //         borderSide: BorderSide.none,
        //       ),
        //       suffixIcon: widget.image != ""
        //           ? Image.asset(widget.image, height: 20, width: 20)
        //           : null,
        //     ),
        //   ),
        // );
        Container(
      // height: 70,
      width: double.infinity,
      // padding: EdgeInsets.only(
      //   left: 20,
      // ),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: ColorUtils.field_background,
      ),
      child: TextField(
        decoration: InputDecoration(
          // contentPadding: EdgeInsets.symmetric(vertical: 18),
          border: InputBorder.none, // removes default border
          hintText: widget.title,
          hintStyle: TextStyle(
              fontSize: 14,
              color: ColorUtils.darkBlack), // same as your previous Text widget
          suffixIcon: widget.image != ""
              ? SizedBox(
                  // height: 20,
                  width: 20,
                  child: Image.asset(
                    widget.image,
                    scale: 2,
                    // height: 20,
                    // width: 20,
                    // fit: BoxFit.contain,
                  ),
                )
              : null,
        ),
      ),
    );
  }
}
