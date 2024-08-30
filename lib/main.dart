import 'package:bmi_calculators/res/routes/routes.dart';
import 'package:bmi_calculators/res/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialization();
  runApp(const MyApp());
}

Future initialization() async {
  await Future.delayed(const Duration(microseconds: 200));
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesName.splashScreen,
      getPages: AppRoutes.routsList,
    );
  }
}
