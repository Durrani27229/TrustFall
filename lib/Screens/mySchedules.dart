import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:loginpage/Screens/home.dart';
import 'package:loginpage/Utils/color_utils.dart';
import 'package:loginpage/Widgets/allRounder.dart';

import 'package:loginpage/Widgets/primaryBtn.dart';

class MySchedules extends StatefulWidget {
  const MySchedules({super.key});

  @override
  State<MySchedules> createState() => _MySchedulesState();
}

class _MySchedulesState extends State<MySchedules> {
  final List<String> genderItems = [
    '5 min',
    '10 min',
    '15 min',
  ];

  String? selectedValue;

  final List<String> timeData = [
    '9:00 AM',
    '10:00 AM',
    '11:00 AM',
    '12:00 PM',
  ];

  String? selectedTime;

  final List<_OptionItem> _items = [
    _OptionItem(label: 'Monday'),
    _OptionItem(label: 'Tuesday'),
    _OptionItem(label: 'Wednesday'),
    _OptionItem(label: 'Thursday'),
    _OptionItem(label: 'Friday'),
    _OptionItem(label: 'Saturday'),
    _OptionItem(label: 'Sunday'),
  ];

  List<String> get _selectedLabels =>
      _items.where((e) => e.isSelected).map((e) => e.label).toList();

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
              "My Schedules",
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
              // =================  Select Days =====================
              DropdownButtonFormField2<String>(
                isExpanded: true,
                decoration: InputDecoration(
                  // Add Horizontal padding using menuItemStyleData.padding so it matches
                  // the menu padding when button's width is not specified.
                  fillColor: ColorUtils.field_background,
                  filled: true,
                  contentPadding: const EdgeInsets.symmetric(vertical: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(22),
                    borderSide: BorderSide.none,
                  ),
                  // Add more decoration..
                ),

                hint: Text(
                  _selectedLabels.isEmpty
                      ? 'Select Days'
                      : _selectedLabels.join(', '),
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: ColorUtils.darkBlack,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),

                // We don't actually use the value / onChanged for selection,
                // checkboxes handle that.
                items: _items.map((item) {
                  return DropdownMenuItem<String>(
                    value: item.label,
                    enabled: false, // important: prevent default tap selection
                    child: StatefulBuilder(
                      builder: (context, menuSetState) {
                        return CheckboxListTile(
                          contentPadding: EdgeInsets.zero,
                          dense: true,
                          controlAffinity: ListTileControlAffinity.trailing,
                          title: Text(item.label),
                          value: item.isSelected,
                          activeColor: ColorUtils.blue,
                          checkboxShape: RoundedRectangleBorder(
                              side: BorderSide(color: ColorUtils.blue),
                              borderRadius: BorderRadius.circular(5)),
                          onChanged: (checked) {
                            // Update both the menu UI and parent state
                            menuSetState(() {
                              item.isSelected = checked ?? false;
                            });
                            setState(() {});
                          },
                        );
                      },
                    ),
                  );
                }).toList(),

                onChanged: (_) {}, // required but unused
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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: ColorUtils.field_background,
                  ),
                ),
                menuItemStyleData: const MenuItemStyleData(
                  padding: EdgeInsets.only(left: 20, right: 20),
                ),
                // (Optional) styling
                // buttonHeight: 48,
                // buttonPadding:
                // const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                // dropdownMaxHeight: 250,
                // dropdownDecoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(8),
                // ),
              ),

              SizedBox(height: 10),

              // =================  Interval =====================
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
                  'Select Interval',
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
                    return 'Please select interval.';
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

//            =============== Time ================

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
                  'Select Time',
                  style: TextStyle(
                      fontSize: 14,
                      color: ColorUtils.darkBlack,
                      fontWeight: FontWeight.normal),
                ),
                items: timeData
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
                  selectedTime = value.toString();
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
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(
          left: 15,
          right: 15,
          bottom: 20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            PrimaryBtn(
              label: "Proceed to Schedule",
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
            ),
            SizedBox(height: 8),
            PrimaryBtn(
              label: "Add More",
              bgBackground: ColorUtils.white,
              textColor: ColorUtils.primaryColor,
              borderColor: ColorUtils.primaryColor,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class _OptionItem {
  _OptionItem({required this.label, this.isSelected = false});
  final String label;
  bool isSelected;
}
