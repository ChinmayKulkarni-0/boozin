
import 'package:boozin/Screens/dashboard/main_screen.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController{
  static SplashScreenController get find => Get.find();
  RxBool animate = false.obs;
  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 900));
    animate.value = true;
    await Future.delayed(const Duration(milliseconds: 1800));
    Get.to(() => const MainScreen());

  }
}