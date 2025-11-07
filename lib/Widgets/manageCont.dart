import 'package:flutter/material.dart';
import 'package:loginpage/Screens/MenuBar/editContact.dart';
import 'package:loginpage/Utils/color_utils.dart';

class ManageContactWidget extends StatefulWidget {
  final String alphabet;
  final String category;
  final String name;

  const ManageContactWidget(
    this.alphabet,
    this.category,
    this.name,
  );

  @override
  State<ManageContactWidget> createState() => _ManageContactWidgetState();
}

class _ManageContactWidgetState extends State<ManageContactWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: ColorUtils.field_background,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 52,
                height: 52,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorUtils.lightBlue,
                ),
                child: Center(
                  child: Text(
                    widget.alphabet,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.category,
                    style: TextStyle(
                        fontSize: 12, color: ColorUtils.black, height: 1),
                  ),
                  Text(widget.name,
                      style: TextStyle(
                          fontSize: 16,
                          color: ColorUtils.black,
                          fontWeight: FontWeight.w500)),
                ],
              ),
            ],
          ),
          Container(
            child: Row(
              children: [
                Image.asset("assets/deleteSmallIcon.png",
                    height: 32, width: 32),
                SizedBox(width: 6),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EditContact())); 
                    },
                    child: Image.asset("assets/editSmallIcon.png",
                        height: 32, width: 32)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
