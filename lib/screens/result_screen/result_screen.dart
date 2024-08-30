import 'package:bmi_calculators/res/components/buttos/custom_buttons.dart';
import 'package:bmi_calculators/res/components/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:remixicon/remixicon.dart';
import '../../res/colors/colors.dart';
import '../../res/components/custom_Icon_button/custom_icon_button.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({super.key});

  final bmiColor = Get.arguments["bmiColor"];
  final bmiResult = Get.arguments["bmiResult"];
  final bmiText = Get.arguments["bmiText"];
  final height = Get.arguments["height"];
  final weight = Get.arguments["weight"];
  final age = Get.arguments["age"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Back button
        leading: CustomIconButton(
          onPressed: () => Get.back(),
          icon: Remix.arrow_left_line,
          iconColor: UiColor.primaryColor,
          size: 28,
        ),

        // Menu  Button
        actions: [
          CustomIconButton(
            onPressed: () {},
            icon: Remix.menu_3_fill,
            iconColor: UiColor.primaryColor,
            size: 28,
          ),
        ],
      ),

      // Body
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Your BMI is",
                    style: TextStyle(
                      color: UiColor.primaryTextColor,
                      fontSize: 28,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CustomIconButton(
                        onPressed: () {},
                        icon: Remix.share_fill,
                        iconColor: UiColor.primaryColor,
                      ),
                      CustomIconButton(
                        onPressed: () {},
                        icon: Remix.bookmark_line,
                        iconColor: UiColor.primaryColor,
                      ),
                      CustomIconButton(
                        onPressed: () {},
                        icon: Remix.error_warning_line,
                        iconColor: UiColor.primaryColor,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              CustomText(
                text: bmiResult,
                color: bmiColor,
                fontSize: 90.0,
                fontWeight: FontWeight.w900,
              ),
              //
              Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "-18.5",
                        style: TextStyle(fontSize: 14, color: UiColor.grayColor),
                      ),
                      Text(
                        "18.5",
                        style: TextStyle(fontSize: 14, color: UiColor.grayColor),
                      ),
                      Text(
                        "24.9",
                        style: TextStyle(fontSize: 14, color: UiColor.grayColor),
                      ),
                      Text(
                        "30+",
                        style: TextStyle(fontSize: 14, color: UiColor.grayColor),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 12,
                        width: MediaQuery.of(context).size.width * 0.30,
                        decoration: const BoxDecoration(
                          color: UiColor.blueColor,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10),
                          ),
                        ),
                      ),
                      Container(
                        height: 12,
                        width: MediaQuery.of(context).size.width * 0.30,
                        decoration: const BoxDecoration(
                          color: UiColor.greenColor,
                        ),
                      ),
                      Container(
                        height: 12,
                        width: MediaQuery.of(context).size.width * 0.30,
                        decoration: const BoxDecoration(
                          color: UiColor.redColor,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: "Underweight",
                        color: UiColor.blueColor,
                        fontSize: 16,
                      ),
                      CustomText(
                        text: "Healthy weight       ",
                        color: UiColor.greenColor,
                        fontSize: 16,
                      ),
                      CustomText(
                        text: "Obesity",
                        color: UiColor.redColor,
                        fontSize: 16,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                  color: UiColor.offWhiteColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomText(
                        text:
                            "Your BMI is $bmiResult, indicating your weight is in the $bmiText category for adults of your height.",
                        color: UiColor.primaryTextColor,
                        fontSize: 16.0,
                      ),
                      // const SizedBox(height: 20,),
                       CustomText(
                        text:
                            "For your height $height cm & and Your weight $weight kg it's $bmiText fitness.",
                        color: UiColor.primaryTextColor,
                        fontSize: 16.0,
                      ),
                      // const SizedBox(height: 20,),
                      const CustomText(
                        text:
                            "Maintaining a healthy weight may reduce the risk of chronic diseases associated with overweight and obesity.",
                        color: UiColor.primaryTextColor,
                        fontSize: 16.0,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              CustomButtons(
                onPressed: () => Get.back(),
                title: "RECALCULATE",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
