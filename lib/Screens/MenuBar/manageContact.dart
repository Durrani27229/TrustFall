import 'package:flutter/material.dart';
import 'package:loginpage/Utils/color_utils.dart';
import 'package:loginpage/Widgets/manageCont.dart';

class ManageContact extends StatefulWidget {
  // const ManageContact({super.key});

  final List contacts = [
    {
      "alphabet": "D",
      "category": "Primary",
      "name": "Davis Bergson",
    },
    {
      "alphabet": "T",
      "category": "Primary",
      "name": "Tatiana Carder",
    },
    {
      "alphabet": "C",
      "category": "Primary",
      "name": "Chance Korsgaard",
    },
    {
      "alphabet": "M",
      "category": "Primary",
      "name": "Marilyn Dokidis",
    },
    {
      "alphabet": "M",
      "category": "Primary",
      "name": "Maren Curtis",
    },
    {
      "alphabet": "C",
      "category": "Primary",
      "name": "Carter Saris",
    },
    {
      "alphabet": "R",
      "category": "Primary",
      "name": "Ryan Rhiel Madsen",
    },
  ];

  @override
  State<ManageContact> createState() => _ManageContactState();
}

class _ManageContactState extends State<ManageContact> {
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
              "Manage Contact",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child:
                    Image.asset("assets/addBigIcon.png", height: 42, width: 42),
              ),
            ],
          ),
        ),
      ),                 

      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: ListView.separated(
            separatorBuilder: (context, index) => SizedBox(height: 5),
            itemCount: widget.contacts.length,
            itemBuilder: (context, index) {
              // return ManageContactWidget("widget.contacts[index]",
              //     "widget.contacts[index]", "widget.contacts[index]");
              return ManageContactWidget(
                widget.contacts[index]["alphabet"],
                widget.contacts[index]["category"],
                widget.contacts[index]["name"],
              );
            }),
      ),
    );
  }
}
