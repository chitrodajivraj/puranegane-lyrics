import 'package:get/get.dart';
import 'package:puranegane_lyrics_app/View/HomePage/home_page.dart';

class SplashScreenController extends GetxController{

  onNavigateScreen(){
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(const HomePage());
    });
  }

}