import 'package:bmi_calculators/screens/first_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Get.to(()=> const FirstScreen(),
                  transition: Transition.leftToRightWithFade,
                  duration: const Duration(seconds: 1)
              );
            },
            child: const Text("First Screen"),
          ),
        ],
      ),
    );
  }
}
