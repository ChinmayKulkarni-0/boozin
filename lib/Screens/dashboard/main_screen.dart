
import 'package:boozin/utils/size_config.dart';
import 'package:boozin/utils/splash_images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:  const EdgeInsets.only(left: 10, top: 10, right: 10),
          child: ListView(
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              topBar(Get.height, Get.width),
              steps(Get.height, Get.width),
              calories(Get.height, Get.width),
            ],
          ),
        ),
      ),
    );
  }
  //Top Bar text
  Widget topBar(double height, double width) {
    return Text("Hi!",
        style: GoogleFonts.nunito(
          fontSize: height * .05,
          fontWeight: FontWeight.w700,
        ));
  }
}
//Steps outer part
Widget steps(double height, double width) {
  return Padding(
    padding: EdgeInsets.only(top: height * 0.05),
    child: Container(
      height: height * 0.17,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: const Color(0xFF323232),
      ),
      child: Padding(
        padding: EdgeInsets.only(
            top: height * 0.025, left: width * 0.05, right: width * 0.03),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  stepsText(Get.height, Get.width),
                  progressBar(Get.height, Get.width),
                ],
              ),
            ),
            stepsImage(Get.height, Get.width)
          ],
        ),
      ),
    ),
  );
}
//Steps upper Text
Widget stepsText(double height, double width){
  return  Row(
    children: [
      Text(STEP,
          style: GoogleFonts.montserrat(
            fontSize: height * .023,
            fontWeight: FontWeight.w400,
          )),
      Text(STEP_COUNT,
          style: GoogleFonts.nunito(
            fontSize: height * .025,
            fontWeight: FontWeight.w600,
          )),
    ],
  );
}
//Steps Progress bar
Widget progressBar(double height, double width) {
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.only(top: height * 0.02),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(13),
          child: LinearProgressIndicator(
            minHeight: height * 0.03,
            color: const Color(0xFFFFFFFF),
            backgroundColor: const Color(0xFF8A8A8A),
            value: 0.8,
            valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFFFFFFFF)),
          ),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(STEP_START_COUNT,
              style: GoogleFonts.nunito(
                fontSize: height * .017,
                fontWeight: FontWeight.w500,
              )),
          Text(STEP_START_END_COUNT,
              style: GoogleFonts.nunito(
                fontSize: height * .017,
                fontWeight: FontWeight.w500,
              )),
        ],
      )
    ],
  );
}
//Streps images
Widget stepsImage(double height, double width){
  return SizedBox(
    width: width*0.2,
    child: Stack(
      children:  [
        Positioned(
          left: width*0.04,
         top: height*0.04,
            child: const Image(image: AssetImage(vector))),
        Positioned(
            left: width*0.055,
            top: height*0.07,
            child: const Image(image: AssetImage(vectorBottom))),
        Positioned(
           right: width*0.04
            ,top: height*0.034,
            child: const Image(image: AssetImage(vector2))),
        Positioned(
           right: width*0.056
            ,top: height*0.065,
            child: const Image(image: AssetImage(vector2Bottom))),

      ],
    ),
  );
}

Widget calories(double height, double width){
  return Padding(
    padding: EdgeInsets.only(top: height * 0.05),
    child: Container(
      height: height * 0.17,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: const Color(0xFF323232),
      ),
      child: Padding(
        padding: EdgeInsets.only(
            top: height * 0.025, left: width * 0.05, right: width * 0.03),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  caloriesText(Get.height, Get.width),
                  caloriesBar(Get.height, Get.width),
                ],
              ),
            ),
            caloriesImage(Get.height, Get.width)
          ],
        ),
      ),
    ),
  );
}

//Steps upper Text
Widget caloriesText(double height, double width){
  return  Row(
    children: [
      Text(CALORIES_BURNED,
          style: GoogleFonts.montserrat(
            fontSize: height * .023,
            fontWeight: FontWeight.w400,
          )),
      Text(CALORIES_BURNED_COUNT,
          style: GoogleFonts.nunito(
            fontSize: height * .025,
            fontWeight: FontWeight.w600,
          )),
    ],
  );
}
//Steps Progress bar
Widget caloriesBar(double height, double width) {
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.only(top: height * 0.02),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(13),
          child: LinearProgressIndicator(
            minHeight: height * 0.03,
            color: const Color(0xFFFFFFFF),
            backgroundColor: const Color(0xFF8A8A8A),
            value: 0.8,
            valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFFFFFFFF)),
          ),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(CALORIES_BURNED_START,
              style: GoogleFonts.nunito(
                fontSize: height * .017,
                fontWeight: FontWeight.w500,
              )),
          Text(CALORIES_BURNED_END,
              style: GoogleFonts.nunito(
                fontSize: height * .017,
                fontWeight: FontWeight.w500,
              )),
        ],
      )
    ],
  );
}
//Streps images
Widget caloriesImage(double height, double width){
  return SizedBox(
    width: width*0.2,
    child: Stack(
      children:  [
        Positioned(
            left: width*0.06,
            top: height*0.03,
            child: const Image(image: AssetImage(caloriesfire))),
        Positioned(
            left: width*0.05,
            top: height*0.07,
            child: const Image(image: AssetImage(kcal))),
      ],
    ),
  );
}
