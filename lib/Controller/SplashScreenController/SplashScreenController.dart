import 'package:get/get.dart';
import 'package:puranegane_lyrics_app/View/HomePage/HomePage.dart';

class SplashScreenController extends GetxController{

  onNavigateScreen(){
    Future.delayed(Duration(seconds: 2), () {
      Get.to(HomePage());
    });
  }

}