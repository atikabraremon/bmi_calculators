import 'dart:ui';

import 'package:bmi_calculators/services/genders/genders.dart';
import 'package:get/get.dart';
import '../../services/calculator_brain/calculator_brain.dart';

class HomeController extends GetxController {
  Rx<Genders> gender = Genders.male.obs;
  RxInt age = 20.obs;
  RxDouble height = 181.0.obs;
  RxDouble weight = 63.0.obs;
  // RxString bmiText = "".obs;

  List<String> items = [
    "Sedentary little or no exercise",
    "Lightly active exercise 1–3 days/week",
    "Moderately active exercise 3–5 days/week",
    "Active exercise 6–7 days/week",
    "Very active hard exercise 6–7 days/week",
  ];
  RxString selectedItem = "Sedentary little or no exercise".obs;

  String bmiResult() {
    final CalculatorBrain calculatorBrain = CalculatorBrain(
      height: height.value,
      weight: weight.value,
    );
    final result = calculatorBrain.calculateBMI().toStringAsFixed(1);
    return result;
  }

  String bmiText() {
    final CalculatorBrain calculatorBrain = CalculatorBrain(
      height: height.value,
      weight: weight.value,
    );
    final result = calculatorBrain.getText();
    return result;
  }

  Color getColor() {
    final CalculatorBrain calculatorBrain = CalculatorBrain(
      height: height.value,
      weight: weight.value,
    );
    final result = calculatorBrain.getColor();
    return result;
  }
}
