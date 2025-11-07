import 'package:flutter/material.dart';
import 'package:loginpage/Utils/color_utils.dart';
import 'package:loginpage/Widgets/primaryBtn.dart';

class Packages extends StatefulWidget {
  const Packages({super.key});

  @override
  State<Packages> createState() => _PackagesState();
}

class _PackagesState extends State<Packages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: AppBar(
            // automaticallyImplyLeading: false,
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
              "Packages",
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
        padding: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Select a plan",
                style: TextStyle(
                  color: ColorUtils.slate,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 5),
            SizedBox(
              height: 182,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 0), // optional left padding
                  _buildPlanCard("Weekly", "\$4.99/wk", isPopular: true),
                  SizedBox(width: 15),
                  _buildPlanCard("Monthly", "\$12.99/mo", isPopular: true),
                  SizedBox(width: 15),
                  _buildPlanCard("Yearly", "\$99.99/yr", isPopular: true),
                  SizedBox(width: 0), // optional right padding
                ],
              ),
            ),
            SizedBox(height: 40),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20, top: 30),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: ColorUtils.borderGrey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(22),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset("assets/check.png", height: 24, width: 24),
                      SizedBox(width: 15),
                      Text(
                        "Affordable Monthly Pay",
                        style: TextStyle(
                          color: ColorUtils.slate,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Image.asset("assets/check.png", height: 24, width: 24),
                      SizedBox(width: 15),
                      Text(
                        "Cancel Anytime",
                        style: TextStyle(
                          color: ColorUtils.slate,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left: 20, right: 20, bottom: 25),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "By tapping Continue, you will be charged, your subscription will auto-renew for the same price and package length until you cancel via App Store settings, and you agree to our Terms.",
              style: TextStyle(
                color: ColorUtils.packageTxt,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            PrimaryBtn(
              label: "Subscribe",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPlanCard(String title, String price, {bool isPopular = false}) {
    return Container(
      width: 292,
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorUtils.borderGrey,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (isPopular)
                  Text(
                    "Popular",
                    style: TextStyle(
                      color: ColorUtils.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                else
                  SizedBox(), // empty space if not popular
                if (isPopular)
                  Image.asset(
                    "assets/tick.png",
                    height: 24,
                    width: 24,
                  )
                else
                  SizedBox(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              title,
              style: TextStyle(
                color: ColorUtils.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, bottom: 10),
            child: Text(
              price,
              style: TextStyle(
                color: ColorUtils.slate,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
