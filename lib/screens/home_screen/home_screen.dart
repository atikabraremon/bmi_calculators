import 'package:bmi_calculators/controller/home_screen/home_controller.dart';
import 'package:bmi_calculators/res/colors/colors.dart';
import 'package:bmi_calculators/res/components/buttos/custom_buttons.dart';
import 'package:bmi_calculators/res/components/custom_Icon_button/custom_icon_button.dart';
import 'package:bmi_calculators/res/components/custom_text/custom_text.dart';
import 'package:bmi_calculators/res/components/gender_button/gender_button.dart';
import 'package:bmi_calculators/res/components/sliders/costume_slider.dart';
import 'package:bmi_calculators/screens/result_screen/result_screen.dart';
import 'package:bmi_calculators/services/genders/genders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:remixicon/remixicon.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size;
    return Scaffold(
      // App Bar
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

      // App Home Screen body
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomText(
                text: "Calorie",
                color: UiColor.primaryTextColor,
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
              const CustomText(
                text: "Calculator",
                color: UiColor.primaryTextColor,
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(
                height: 20,
              ),
              Obx(
                () => SwitchButton(
                  gender: homeController.gender.value,
                  onMaleTap: () {
                    homeController.gender.value = Genders.male;
                  },
                  onFemaleTap: () {
                    homeController.gender.value = Genders.female;
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomText(
                text: "Age",
                color: UiColor.primaryTextColor,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
              Container(
                height: 60,
                width: width.width / 2,
                decoration: BoxDecoration(
                  color: UiColor.offWhiteColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomIconButton(
                      onPressed: () => homeController.age.value--,
                      icon: Remix.subtract_line,
                    ),
                    Obx(
                      () => CustomText(
                        text: homeController.age.value.toString(),
                        color: Colors.grey,
                        fontSize: 22,
                      ),
                    ),
                    CustomIconButton(
                      onPressed: () => homeController.age.value++,
                      icon: Remix.add_line,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Obx(
                () => CostumeSlider(
                  count: homeController.height.value,
                  min: 120.0,
                  max: 210.0,
                  title: "Height",
                  subTitle: "cm",
                  onChanged: (value) {
                    homeController.height.value = value;
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Obx(
                () => CostumeSlider(
                  count: homeController.weight.value,
                  title: "weight",
                  subTitle: "kg",
                  onChanged: (value) {
                    homeController.weight.value = value;
                  },
                  min: 1,
                  max: 220,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomText(
                text: "Exercise level",
                color: UiColor.primaryTextColor,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 70,
                decoration: BoxDecoration(
                  color: UiColor.offWhiteColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Obx(
                    () => DropdownButton<String>(
                      dropdownColor: UiColor.offWhiteColor,
                      elevation: 5,
                      underline: Container(),
                      icon: const Icon(
                        Remix.arrow_down_s_line,
                        color: UiColor.primaryColor,
                      ),
                      style: TextStyle(
                        color: UiColor.primaryTextColor.withOpacity(0.7),
                        fontSize: 16,
                      ),
                      // borderRadius: ,
                      value: homeController.selectedItem.value,
                      items: homeController.items
                          .map(
                            (item) => DropdownMenuItem(
                              value: item,
                              child: Text(item),
                            ),
                          )
                          .toList(),
                      onChanged: (value) =>
                          homeController.selectedItem.value = value.toString(),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButtons(
                onPressed: () {
                  Get.to(
                    () => ResultScreen(),
                    duration: const Duration(seconds: 1),
                    transition: Transition.circularReveal,
                    arguments: {
                      "bmiText": homeController.bmiText(),
                      "bmiColor": homeController.getColor(),
                      "bmiResult": homeController.bmiResult(),
                      "age": homeController.age.value,
                      "height": homeController.height.value.toStringAsFixed(1),
                      "weight": homeController.height.value.toStringAsFixed(1),
                    },
                  );
                },
                title: "Calorie Calculator",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
