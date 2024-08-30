import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

import '../../colors/colors.dart';

class CostumeSlider extends StatelessWidget {

  final double count;
  final String title;
  final String subTitle;
  final double min;
  final double max;
  final Function(double val) onChanged;

   const CostumeSlider({super.key, required this.count, required this.title, required this.subTitle, required this.onChanged, required this.min, required this.max,});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Text(
              title.toString(),
              textAlign: TextAlign.start,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: UiColor.primaryTextColor,
              ),
            ),
            Text(
              count.toStringAsFixed(2),
              textAlign: TextAlign.start,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.grey,
              ),
            ),
             Row(
              children: [
                Text(
                  subTitle,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    fontSize: 18,
                    color: UiColor.primaryColor,
                  ),
                ),
                const Center(
                  child: Icon(
                    Remix.arrow_down_s_line,
                    size: 18,
                    color: UiColor.primaryColor,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        SliderTheme(
          data: SliderThemeData(
            thumbShape: const RoundSliderThumbShape(
              enabledThumbRadius: 14,
            ),
            activeTrackColor: UiColor.offWhiteColor,
            inactiveTrackColor: UiColor.offWhiteColor ,
            trackHeight: 10,
            overlayColor: UiColor.secondaryColor.withOpacity(0.4),
          ),
          child: Slider(
            // divisions: 10,
            autofocus: true,
            value: count,
            min: min,
            max: max,
            thumbColor: UiColor.primaryColor,
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }
}
