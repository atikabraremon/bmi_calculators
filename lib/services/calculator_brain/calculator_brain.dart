import 'dart:math';
import 'package:flutter/material.dart';
import '../../res/colors/colors.dart';

class CalculatorBrain {
  final double height, weight;

  String ? bmiText;

  CalculatorBrain({required this.height, required this.weight});

  double calculateBMI() {
    final bmi = weight / pow(height / 100, 2);
    return bmi;
  }

  Color getColor() {
    final _bmi = calculateBMI();
    if (_bmi <= 24.9 && _bmi >= 18.5) {
      bmiText = "normal";
      return UiColor.greenColor;
    } else if (_bmi <= 18.5) {
      bmiText = "Underweight";
      return UiColor.blueColor;
    } else {
      bmiText = "Overweight";
      return UiColor.redColor;
    }
  }


  String getText() {
    final _bmi = calculateBMI();
    if (_bmi <= 24.9 && _bmi >= 18.5) {
      return "normal";
    } else if (_bmi <= 18.5) {
      return"Underweight";
    } else {
      return  "Overweight";
    }
  }

}
