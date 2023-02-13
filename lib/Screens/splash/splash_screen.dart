
import 'package:boozin/Screens/splash/controller.dart';
import 'package:boozin/utils/splash_images.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class SplashScreen extends StatelessWidget {

  final splashController = Get.put(SplashScreenController());
  String currentTheme="";

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).padding;
    currentTheme= WidgetsBinding.instance.window.platformBrightness.toString();
    SplashScreenController.find.startAnimation();
    return Scaffold(
      body:
      currentTheme=="Brightness.light"?
      Stack(
        children: [
          Obx(
                () => AnimatedPositioned(
              duration: const Duration(seconds: 1600),
              top: height/2,
              left: width/3.6,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1600),
                opacity: splashController.animate.value ? 1 : 0,
                child:  const Image(image: AssetImage(b)),
              ),
            ),
          ),
          Obx(
                () => AnimatedPositioned(
              duration: const Duration(milliseconds: 2000),
                  top: height/1.94,
                  left:width/2.7,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: splashController.animate.value ? 1 : 0,
                child:  const Image(image: AssetImage(oo)),
              ),
            ),
          ),
          Obx(
                () => AnimatedPositioned(
              duration: const Duration(milliseconds: 2400),
                  top: height/1.93,
                  left: width/1.82,
              // bottom: splashController.animate.value ? 100 : 0,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: splashController.animate.value ? 1 : 0,
                child:  const Image(image: AssetImage(z)),
              ),
            ),
          ),
          Obx(
                () => AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              // bottom: splashController.animate.value ? 60 : 0,
                  top:height/2.1,
                  // left:splashController.animate.value?width/2:width/2,
                  left:splashController.animate.value?width/1.62:width/2,
              child: const AnimatedOpacity(
                duration: Duration(milliseconds: 2000),
                opacity: 1,
                child:  Image(image: AssetImage(image1)),
              ),
            ),
          ),
          Obx(
                () => AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              // bottom: splashController.animate.value ? 60 : 0,
                  top: height/1.93,
                  left:splashController.animate.value?width/1.55:width/1.9,
                  // left:splashController.animate.value?width/1.55:width/2,
              child: const AnimatedOpacity(
                duration: Duration(milliseconds: 2000),
                opacity:1 ,
                child:  Image(image: AssetImage(image2)),
              ),
            ),
          ),   Obx(
                () => AnimatedPositioned(
              duration: const Duration(milliseconds: 2400),
              // bottom: splashController.animate.value ? 60 : 0,
                  top: height/1.93,
                  left:width/1.45,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: splashController.animate.value ? 1 : 0,
                child:  const Image(image: AssetImage(u)),
              ),
            ),
          ),
        ],
      ):
      Stack(
        children: [
          Obx(
                () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: height/2,
              left: width/3.6,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1600),
                opacity: splashController.animate.value ? 1 : 0,
                child:  const Image(image: AssetImage(darkB)),
              ),
            ),
          ),
          Obx(
                () => AnimatedPositioned(
              duration: const Duration(milliseconds: 2000),
                  top: height/1.94,
                  left:width/2.7,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: splashController.animate.value ? 1 : 0,
                child:  const Image(image: AssetImage(oo)),
              ),
            ),
          ),
          Obx(
                () => AnimatedPositioned(
              duration: const Duration(milliseconds: 2400),
                  top: height/1.93,
                  left: width/1.82,
              // bottom: splashController.animate.value ? 100 : 0,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: splashController.animate.value ? 1 : 0,
                child:  const Image(image: AssetImage(darkZ)),
              ),
            ),
          ),
          Obx(
                () => AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              // bottom: splashController.animate.value ? 60 : 0,
              top:height/2.1,
              // left:splashController.animate.value?width/2:width/2,
              left:splashController.animate.value?width/1.62:width/2,
              child: const AnimatedOpacity(
                duration: Duration(milliseconds: 2000),
                opacity: 1,
                child:  Image(image: AssetImage(image1)),
              ),
            ),
          ),
          Obx(
                () => AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              // bottom: splashController.animate.value ? 60 : 0,
              top: height/1.93,
              left:splashController.animate.value?width/1.55:width/1.9,
              // left:splashController.animate.value?width/1.55:width/2,
              child: const AnimatedOpacity(
                duration: Duration(milliseconds: 2000),
                opacity:1 ,
                child:  Image(image: AssetImage(image2)),
              ),
            ),
          ),   Obx(
                () => AnimatedPositioned(
              duration: const Duration(milliseconds: 2400),
              // bottom: splashController.animate.value ? 60 : 0,
                  top: height/1.93,
                  left:width/1.45,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: splashController.animate.value ? 1 : 0,
                child:  const Image(image: AssetImage(darkU)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}