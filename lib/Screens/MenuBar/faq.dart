import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:loginpage/Utils/color_utils.dart';

class Faq extends StatefulWidget {
  const Faq({super.key});

  @override
  State<Faq> createState() => _FaqState();
}

class _FaqState extends State<Faq> {
  final List<String> faq = [
    "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos, quae.",
    "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos, quae.",
    "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos, quae.",
    "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos, quae."
  ];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: AppBar(
            automaticallyImplyLeading: false,
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Image.asset("assets/back.png", height: 44, width: 44),
              ),
            ),
            centerTitle: true,
            title: Text(
              "FAQ's",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          padding: EdgeInsets.only(top: 40),
          child: Column(
            children: [
//            =============== DropDown ================

              DropdownButtonFormField2<String>(
                isExpanded: true,
                decoration: InputDecoration(
                  // Add Horizontal padding using menuItemStyleData.padding so it matches
                  // the menu padding when button's width is not specified.
                  fillColor: ColorUtils.field_background,
                  filled: true,
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 16,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(22),
                    borderSide: BorderSide.none,
                  ),
                  // Add more decoration..
                ),
                hint: Text(
                  'Lorem Ispum',
                  style: TextStyle(
                      fontSize: 14,
                      color: ColorUtils.darkBlack,
                      fontWeight: FontWeight.normal),
                ),
                items: faq
                    .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: TextStyle(
                                fontSize: 14,
                                color: ColorUtils.darkBlack,
                                fontWeight: FontWeight.normal),
                          ),
                        ))
                    .toList(),
                validator: (value) {
                  if (value == null) {
                    return 'Please select time.';
                  }
                  return null;
                },
                onChanged: (value) {
                  //Do something when selected item is changed.
                },
                onSaved: (value) {
                  selectedValue = value.toString();
                },
                buttonStyleData: const ButtonStyleData(
                  height: 30,
                  padding: EdgeInsets.only(right: 20),
                ),
                iconStyleData: const IconStyleData(
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                  ),
                  iconSize: 30,
                ),
                dropdownStyleData: DropdownStyleData(
                  // elevation: 0,
                  offset: Offset(0, -5),
                  padding: EdgeInsets.only(left: 0),

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: ColorUtils.field_background,
                  ),
                ),
                menuItemStyleData: const MenuItemStyleData(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                ),
              ),

              SizedBox(height: 20),

              //  =============== DropDown ================

              DropdownButtonFormField2<String>(
                isExpanded: true,
                decoration: InputDecoration(
                  // Add Horizontal padding using menuItemStyleData.padding so it matches
                  // the menu padding when button's width is not specified.
                  fillColor: ColorUtils.field_background,
                  filled: true,
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 16,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(22),
                    borderSide: BorderSide.none,
                  ),
                  // Add more decoration..
                ),
                hint: Text(
                  'Lorem Ispum',
                  style: TextStyle(
                      fontSize: 14,
                      color: ColorUtils.darkBlack,
                      fontWeight: FontWeight.normal),
                ),
                items: faq
                    .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: TextStyle(
                                fontSize: 14,
                                color: ColorUtils.darkBlack,
                                fontWeight: FontWeight.normal),
                          ),
                        ))
                    .toList(),
                validator: (value) {
                  if (value == null) {
                    return 'Please select time.';
                  }
                  return null;
                },
                onChanged: (value) {
                  //Do something when selected item is changed.
                },
                onSaved: (value) {
                  selectedValue = value.toString();
                },
                buttonStyleData: const ButtonStyleData(
                  height: 30,
                  padding: EdgeInsets.only(right: 20),
                ),
                iconStyleData: const IconStyleData(
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                  ),
                  iconSize: 30,
                ),
                dropdownStyleData: DropdownStyleData(
                  // elevation: 0,
                  offset: Offset(0, -5),
                  padding: EdgeInsets.only(left: 0),

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: ColorUtils.field_background,
                  ),
                ),
                menuItemStyleData: const MenuItemStyleData(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                ),
              ),

              SizedBox(height: 20),

              //  =============== DropDown ================

              DropdownButtonFormField2<String>(
                isExpanded: true,
                decoration: InputDecoration(
                  // Add Horizontal padding using menuItemStyleData.padding so it matches
                  // the menu padding when button's width is not specified.
                  fillColor: ColorUtils.field_background,
                  filled: true,
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 16,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(22),
                    borderSide: BorderSide.none,
                  ),
                  // Add more decoration..
                ),
                hint: Text(
                  'Lorem Ispum',
                  style: TextStyle(
                      fontSize: 14,
                      color: ColorUtils.darkBlack,
                      fontWeight: FontWeight.normal),
                ),
                items: faq
                    .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: TextStyle(
                                fontSize: 14,
                                color: ColorUtils.darkBlack,
                                fontWeight: FontWeight.normal),
                          ),
                        ))
                    .toList(),
                validator: (value) {
                  if (value == null) {
                    return 'Please select time.';
                  }
                  return null;
                },
                onChanged: (value) {
                  //Do something when selected item is changed.
                },
                onSaved: (value) {
                  selectedValue = value.toString();
                },
                buttonStyleData: const ButtonStyleData(
                  height: 30,
                  padding: EdgeInsets.only(right: 20),
                ),
                iconStyleData: const IconStyleData(
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                  ),
                  iconSize: 30,
                ),
                dropdownStyleData: DropdownStyleData(
                  // elevation: 0,
                  offset: Offset(0, -5),
                  padding: EdgeInsets.only(left: 0),

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: ColorUtils.field_background,
                  ),
                ),
                menuItemStyleData: const MenuItemStyleData(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                ),
              ),                 
            ],
          ),
        ),
      ),
    );
  }
}
