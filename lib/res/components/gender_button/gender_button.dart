import 'package:bmi_calculators/res/components/gender_button/g_button.dart';
import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';
import '../../../services/genders/genders.dart';
import '../../colors/colors.dart';

class SwitchButton extends StatelessWidget {
  final Genders gender;
  final VoidCallback onMaleTap;
  final VoidCallback onFemaleTap;

  const SwitchButton({
    super.key,
    required this.gender,
    required this.onMaleTap,
    required this.onFemaleTap,
  });
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size;
    return Material(
      child: SizedBox(
        height: 65,
        width: width.width * 1,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              height: 60,
              width: width.width * 1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: UiColor.secondaryColor,
                  width: 2,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GButton(
                  width: width.width * 0.45,
                  height: 62,
                  color: gender == Genders.male ? UiColor.primaryColor : null,
                  onTap: onMaleTap,
                  title: "Male",
                  icon: Remix.men_line,
                  textButtonColor: gender == Genders.male ? UiColor.witheColor : UiColor.secondaryColor,
                ),
                GButton(
                  width: width.width * 0.45,
                  height: 62,
                  color: gender == Genders.female ? UiColor.primaryColor : null,
                  onTap: onFemaleTap,
                  title: "Female",
                  icon: Remix.women_line,
                  textButtonColor: gender == Genders.female ? UiColor.witheColor : UiColor.secondaryColor,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
