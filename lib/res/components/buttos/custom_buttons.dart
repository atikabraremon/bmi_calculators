import 'package:flutter/material.dart';
import '../../colors/colors.dart';

class CustomButtons extends StatelessWidget {
  const CustomButtons(
      {super.key, required this.onPressed, required this.title, this.icon});

  final VoidCallback onPressed;
  final String title;
  // final bool icons;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: UiColor.primaryColor,
      padding: const EdgeInsets.symmetric(vertical: 12),
      onPressed: onPressed,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: UiColor.witheColor,
              fontSize: 18,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            child: icon,
          )
        ],
      ),
    );
  }
}
