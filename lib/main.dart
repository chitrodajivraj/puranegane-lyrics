import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:puranegane_lyrics_app/Config/Utils/colors.dart';
import 'package:puranegane_lyrics_app/Config/Utils/styles.dart';
import 'package:puranegane_lyrics_app/View/HomePage/HomePage.dart';
import 'package:puranegane_lyrics_app/View/SplashScreen/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'PuraneGane Lyrics',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: fontafamily,
        colorScheme: ColorScheme.fromSeed(seedColor: colorAccent),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}
