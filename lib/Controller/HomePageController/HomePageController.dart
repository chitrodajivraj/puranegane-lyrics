import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:puranegane_lyrics_app/Config/Utils/images.dart';
import 'package:puranegane_lyrics_app/Model/HomeCategoryModel/HomeCategoryModel.dart';

class HomePageController extends GetxController{


  TextEditingController txtSearch = TextEditingController();
  RxList<HomeCategoryModel> homeCategoryList = RxList([]);


  @override
  void onInit() {
    super.onInit();
    getHomeCategoryData();
  }

  Future<RxList<HomeCategoryModel>> getHomeCategoryData()async{
    homeCategoryList = RxList([]);
    homeCategoryList.add(HomeCategoryModel(
      id: "1",
      image: latamangeshkar_image,
      totalSongs: "4244",
        artiestName: "Lata Mangeshkar"
    ));
    homeCategoryList.add(HomeCategoryModel(
        id: "2",
        image: kishorekumar_image,
        totalSongs: "2000",
      artiestName: "Kishore Kumar"
    ));
    homeCategoryList.add(HomeCategoryModel(
        id: "3",
        image: mdrafi_image,
        totalSongs: "4626",
        artiestName: "Mohammed Rafi"
    ));
    homeCategoryList.add(HomeCategoryModel(
        id: "3",
        image: ashabhosle_image,
        totalSongs: "4332",
        artiestName: "Asha Bhosle"
    ));
    homeCategoryList.add(HomeCategoryModel(
        id: "4",
        image: kumarsanu_image,
        totalSongs: "5455",
        artiestName: "Kumar Sanu"
    ));
    homeCategoryList.add(HomeCategoryModel(
        id: "5",
        image: alkayagnik_image,
        totalSongs: "4066",
        artiestName: "Alka Yagnik"
    ));
    homeCategoryList.add(HomeCategoryModel(
        id: "5",
        image: uditnarayan_image,
        totalSongs: "5455",
        artiestName: "Udit Narayan"
    ));
    return homeCategoryList;
  }

}