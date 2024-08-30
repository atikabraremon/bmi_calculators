import 'package:flutter/material.dart';


class GButton extends StatelessWidget {
  final double width, height;
  final VoidCallback onTap;
  final String title;
  final IconData icon;
  final Color? color, textButtonColor;

  const GButton({
    super.key,
    required this.width,
    required this.height,
    required this.onTap,
    required this.title,
    required this.icon,
    required this.color,
    required this.textButtonColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 28,
              color: textButtonColor,
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              title,
              style: TextStyle(
                color: textButtonColor,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
