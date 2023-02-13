import 'package:boozin/Screens/splash/splash_screen.dart';
import 'package:boozin/utils/theme_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark().copyWith(scaffoldBackgroundColor: const Color(0xFF000000)),
      home:  SplashScreen(
      ),
    );
  }
}
