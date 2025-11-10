import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:loginpage/Utils/color_utils.dart';
import 'package:loginpage/Widgets/allRounder.dart';
import 'package:loginpage/Widgets/primaryBtn.dart';

class AddContacts extends StatefulWidget {
  @override
  State<AddContacts> createState() => _AddContactsState();
}

class _AddContactsState extends State<AddContacts> {
  final List<String> categories = [
    'Primary',
    'Secondary',
    'Tertiary',
  ];

  String? selectedValue;
  bool isExpanded = false;

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
              "Add Contact",
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
              // DropdownButtonFormField2<String>(
              //   isExpanded: true,
              //   decoration: InputDecoration(
              //     // Add Horizontal padding using menuItemStyleData.padding so it matches
              //     // the menu padding when button's width is not specified.
              //     fillColor: ColorUtils.field_background,
              //     filled: true,
              //     contentPadding: const EdgeInsets.symmetric(
              //       vertical: 16,
              //     ),
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(22),
              //       borderSide: BorderSide.none,
              //     ),
              //     // Add more decoration..
              //   ),
              //   hint: Text(
              //     'Select Category',
              //     style: TextStyle(
              //         fontSize: 14,
              //         color: ColorUtils.darkBlack,
              //         fontWeight: FontWeight.normal),
              //   ),
              //   items: genderItems
              //       .map((item) => DropdownMenuItem<String>(
              //             value: item,
              //             child: Text(
              //               item,
              //               style: TextStyle(
              //                   fontSize: 14,
              //                   color: ColorUtils.darkBlack,
              //                   fontWeight: FontWeight.normal),
              //             ),
              //           ))
              //       .toList(),
              //   validator: (value) {
              //     if (value == null) {
              //       return 'Please select gender.';
              //     }
              //     return null;
              //   },
              //   onChanged: (value) {
              //     //Do something when selected item is changed.
              //   },
              //   onSaved: (value) {
              //     selectedValue = value.toString();
              //   },
              //   buttonStyleData: const ButtonStyleData(
              //     height: 30,
              //     padding: EdgeInsets.only(right: 20),
              //   ),
              //   iconStyleData: const IconStyleData(
              //     icon: Icon(
              //       Icons.arrow_drop_down,
              //       color: Colors.black,
              //     ),
              //     iconSize: 30,
              //   ),
              //   dropdownStyleData: DropdownStyleData(
              //     // elevation: 0,
              //     offset: Offset(0, -4),
              //     padding: EdgeInsets.only(left: 0),

              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(22),
              //       color: ColorUtils.field_background,
              //     ),
              //   ),
              //   menuItemStyleData: const MenuItemStyleData(
              //     padding: EdgeInsets.symmetric(horizontal: 20),
              //   ),
              // ),

              GestureDetector(
                onTap: () {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                    color: ColorUtils.field_background,
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Select Category"),
                          isExpanded
                              ? Image.asset("assets/arrowup.png", scale: 3)
                              : Image.asset(
                                  "assets/arrowdown.png",
                                  scale: 3,
                                ),
                        ],
                      ),
                      isExpanded
                          ? Divider(
                              thickness: 1,
                            )
                          : SizedBox(),
                          
                      isExpanded
                          ? Text(
                              "Primary",
                              style: TextStyle(
                                color: ColorUtils.darkBlack,
                              ),
                            )
                          : SizedBox(),
                      isExpanded
                          ? Text(
                              "Secondary",
                              style: TextStyle(
                                color: ColorUtils.darkBlack,
                              ),
                            )
                          : SizedBox(),
                      isExpanded
                          ? Text(
                              "Tertiary",
                              style: TextStyle(
                                color: ColorUtils.darkBlack,
                              ),
                            )
                          : SizedBox(),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 10),
              AllRounder(title: "Full Name", image: ""),
              SizedBox(height: 10),
              AllRounder(title: "Contact Number", image: ""),
              SizedBox(height: 10),
              AllRounder(title: "Email Address", image: ""),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 15, right: 15, bottom: 10),
        child: PrimaryBtn(
          label: "Add",
          onTap: () {},
        ),
      ),
    );
  }
}
