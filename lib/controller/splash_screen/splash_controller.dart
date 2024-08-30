import 'package:bmi_calculators/res/routes/routes_name.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  void getPage() {
    Future.delayed(const Duration(seconds: 1, milliseconds: 70), () {
      Get.offAllNamed(RoutesName.homeScreen);
    });
  }

  @override
  void onInit() {
    // TODO: implement onInit
    getPage();
    super.onInit();
  }
}
