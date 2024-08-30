import 'package:bmi_calculators/res/colors/colors.dart';
import 'package:bmi_calculators/res/components/buttos/custom_buttons.dart';
import 'package:bmi_calculators/res/components/custom_text/custom_text.dart';
import 'package:bmi_calculators/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:remixicon/remixicon.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Remix.menu_3_fill,
              size: 28,
              color: UiColor.primaryColor,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // header text start
              const CustomText(
                text: "Calorie",
                color: UiColor.primaryTextColor,
                fontSize: 44,
                fontWeight: FontWeight.w600,
              ),
              const CustomText(
                text: "Calculator",
                color: UiColor.primaryTextColor,
                fontSize: 44,
                fontWeight: FontWeight.w600,
              ),
              // header text end.

              // space height 10
              const SizedBox(
                height: 10,
              ),

              //Details Bmi Calorie Calculator
              const CustomText(
                text:
                    "Accurately calculate daily calories required for weight loss or maintenance",
                color: UiColor.primaryTextColor,
                fontSize: 18,
              ),

              // background image
              const SizedBox(
                height: 400,
                child: Image(
                  image: AssetImage(
                    "assets/images/01.png",
                  ),
                ),
              ),

              // space 30
              const SizedBox(
                height: 30,
              ),

              // Calorie Calculator Button
              CustomButtons(
                onPressed: () => Get.to(
                  () =>  HomeScreen(),
                  duration: const Duration(seconds: 1),
                  transition: Transition.leftToRightWithFade,
                ),
                icon: const Icon(
                  Remix.arrow_right_line,
                  size: 22,
                  color: UiColor.witheColor,
                ),
                title: "Calorie Calculator",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
