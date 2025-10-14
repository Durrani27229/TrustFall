import 'package:flutter/material.dart';
import 'package:loginpage/Utils/color_utils.dart';

Widget checkBoxWidget({
  ValueChanged<bool?>? onChange,
  bool check = false,
  bool changeBG = false,
}) {
  return Container(
      decoration: BoxDecoration(
        color: !check
            ? changeBG == true
                ? ColorUtils.txtGrey
                : Colors.grey.shade300
            : ColorUtils.primaryColor,
        borderRadius: BorderRadius.circular(5),
        // border: Border.all(color: ColorUtils.white, width: 2)
      ),
      alignment: Alignment.center,
      width: 18,
      height: 18,
      child: Checkbox(
        checkColor: ColorUtils.white,
        side: BorderSide.none,
        value: check,
        onChanged: onChange,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5), side: BorderSide.none),
        activeColor: ColorUtils.primaryColor,
      )
      // side: BorderSide(color: ColorUtils., width: 5),
      );
}
