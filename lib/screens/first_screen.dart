import 'package:bmi_calculators/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Screen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Get.offAll(()=> HomeScreen(),
                transition: Transition.circularReveal,
                duration: const Duration(seconds: 1)
              );
            },
            child: const Text("Home Screen"),
          ),
        ],
      ),
    );
  }
}
