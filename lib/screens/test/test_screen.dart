import 'package:bmi_calculators/res/colors/colors.dart';
import 'package:bmi_calculators/services/genders/genders.dart';
import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';


class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  final bool isButton = true;

  Genders gender = Genders.female;

  List<String> items = [
    "Sedentary little or no exercise",
    "Lightly active exercise 1–3 days/week",
    "Moderately active exercise 3–5 days/week",
    "Active exercise 6–7 days/week",
    "Very active hard exercise 6–7 days/week",
  ];

  String? selectedItem = "Sedentary little or no exercise";
  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Screen"),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              // margin: const EdgeInsets.symmetric(horizontal: 10),
              height: 70,
              decoration: BoxDecoration(
                  color: UiColor.offWhiteColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: DropdownButton<String>(
                  dropdownColor: UiColor.offWhiteColor,
                  elevation: 5,
                  underline: Container(),
                  icon: const Icon(
                    Remix.arrow_down_s_line,
                    color: UiColor.primaryColor,
                  ),
                  style: TextStyle(
                    color: UiColor.primaryTextColor.withOpacity(0.7),
                    fontSize: 16
                  ),
                  // borderRadius: ,
                  value: selectedItem,
                  items: items
                      .map((item) => DropdownMenuItem(
                            value: item,
                            child: Text(item),
                          ))
                      .toList(),
                  onChanged: (value) => setState(() {
                    selectedItem = value;
                  }),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
