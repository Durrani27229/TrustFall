import 'package:flutter/material.dart';
import 'package:loginpage/Utils/color_utils.dart';

class InputField extends StatefulWidget {
  final bool isPassword;
  final hintText;
  final image;
  InputField({
    required this.hintText,
    this.isPassword = false,
    this.image = "",
  });

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.isPassword ? _obscureText : false,
      decoration: InputDecoration(
        fillColor: ColorUtils.field_background,
        filled: true,
        hintText: widget.hintText,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        prefixIcon: widget.image != ""
            ? Padding(
                padding: EdgeInsets.only(left: 20, right: 10),
                child: Image.asset(
                  widget.image,
                  height: 20,
                  width: 20,
                  fit: BoxFit.contain,
                ),
              )
            : null,
        suffixIcon: widget.isPassword
            ? GestureDetector(
                onTap: () {
                  print("==============> ontap: ${widget.isPassword}");
                  _obscureText = !_obscureText;
                  setState(() {});
                },
                child: Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off),
                ))
            : null,
      ),
    );
  }
}
