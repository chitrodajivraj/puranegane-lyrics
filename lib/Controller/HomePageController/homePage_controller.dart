import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:puranegane_lyrics_app/Config/Helper/constant.dart';
import 'package:puranegane_lyrics_app/Config/Utils/images.dart';
import 'package:puranegane_lyrics_app/Model/HomeCategoryModel/home_category_model.dart';
import 'package:puranegane_lyrics_app/Model/SingersModel/singers_model.dart';

class HomePageController extends GetxController{
  TextEditingController txtSearch = TextEditingController();
  RxList<HomeCategoryModel> homeCategoryList = RxList([]);
  RxList<SingersModel> singersList = RxList([]);

  @override
  void onInit() {
    super.onInit();
    getHomeCategoryData();
    fetchSingersData();
  }

  Future<List<SingersModel>> fetchSingersData() async {
    final response = await http.get(Uri.parse(singersURL));
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      List<SingersModel> singers = data.map((json) => SingersModel.fromJson(json)).toList();
      singersList.value = singers;
      print(singersList.length);
      print("singersList.length");
      return singers;
    } else {
      throw Exception('Failed to load singers data');
    }
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
        image: kumarsanuImage,
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


class ApiService {
  final Dio _dio = Dio();

  Future<SingersModel> getUserData() async {
    try {
      final response = await _dio.get(singersURL);
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = response.data;
        final userModel = SingersModel.fromJson(data);
        return userModel;
      } else {
        throw Exception('Failed to load user data');
      }
    } catch (e) {
      throw Exception('Failed to load user data');
    }
  }
}