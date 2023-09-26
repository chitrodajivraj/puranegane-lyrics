import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:puranegane_lyrics_app/Config/Utils/colors.dart';
import 'package:puranegane_lyrics_app/Controller/SplashScreenController/splashScreen_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  SplashScreenController cnt_splash = Get.put(SplashScreenController());

  @override
  void initState() {
    super.initState();
    cnt_splash.onNavigateScreen();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 50,
              color: red,
            )
          ],
        ),
      ),
    );
  }
}
