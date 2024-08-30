import 'package:bmi_calculators/res/routes/routes_name.dart';
import 'package:bmi_calculators/screens/first_screen.dart';
import 'package:bmi_calculators/screens/home_screen/home_screen.dart';
import 'package:bmi_calculators/screens/second_screen.dart';
import 'package:bmi_calculators/screens/splash_screen/splash_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static List<GetPage> routsList = [
    GetPage(
      name: RoutesName.splashScreen,
      page: () => const SplashScreen(),
      transition: Transition.fadeIn,
      // transitionDuration: const Duration(seconds: 3),
    ),
    GetPage(
      name: RoutesName.homeScreen,
      page: () => HomeScreen(),
      // transition: Transition.fade,
      // transitionDuration: const Duration(seconds: 1),
    ),
    GetPage(
      name: RoutesName.firstScreen,
      page: () => const FirstScreen(),
      // transition: Transition.fade,
      // transitionDuration: const Duration(seconds: 2),
    ),
    GetPage(
      name: RoutesName.secondScreen,
      page: () => const SecondScreen(),
      // transition: Transition.fadeIn,
      // transitionDuration: const Duration(seconds: 1),
    ),
  ];
}
