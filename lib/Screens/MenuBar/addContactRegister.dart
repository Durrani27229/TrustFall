import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:loginpage/Screens/addContactInner.dart';
import 'package:loginpage/Screens/mySchedules.dart';
import 'package:loginpage/Utils/color_utils.dart';
import 'package:loginpage/Widgets/allRounder.dart';
import 'package:loginpage/Widgets/primaryBtn.dart';

class AddContact extends StatefulWidget {
  // const AddContact({super.key});

  @override
  State<AddContact> createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {
  final List<String> genderItems = [
    'Primary',
    'Secondary',
    'Tertiary',
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
      body: Container(
        margin: EdgeInsets.only(left: 15, right: 15),
        padding: EdgeInsets.only(top: 40),
        child: Column(
          children: [
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
                'Select Category',
                style: TextStyle(
                    fontSize: 14,
                    color: ColorUtils.darkBlack,
                    fontWeight: FontWeight.normal),
              ),
              items: genderItems
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
                  return 'Please select gender.';
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
                offset: Offset(0, -4),
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
            SizedBox(height: 10),
            AllRounder(title: "Full Name", image: ""),
            SizedBox(height: 10),
            AllRounder(title: "Contact Number", image: ""),
            SizedBox(height: 10),
            AllRounder(title: "Email Address", image: ""),
            SizedBox(height: 10),
            Container(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AddContactInner()));
                },
                child: Text("+ Add Contact",
                    // textAlign: TextAlign.end,
                    style: TextStyle(
                      color: ColorUtils.primaryColor,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 15, right: 15, bottom: 10),
        child: PrimaryBtn(
          label: "Proceed to Schedule",
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MySchedules()));
          },
        ),
      ),
    );
  }
}
