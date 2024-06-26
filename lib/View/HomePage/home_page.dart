
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:puranegane_lyrics_app/Config/Utils/colors.dart';
import 'package:puranegane_lyrics_app/Config/Utils/images.dart';
import 'package:puranegane_lyrics_app/Config/Utils/strings.dart';
import 'package:puranegane_lyrics_app/Config/Utils/styles.dart';
import 'package:puranegane_lyrics_app/Controller/HomePageController/homePage_controller.dart';
import 'package:puranegane_lyrics_app/Model/HomeCategoryModel/home_category_model.dart';
import 'package:puranegane_lyrics_app/Model/SingersModel/singers_model.dart';
import 'package:puranegane_lyrics_app/Widget/custom_appbar.dart';
import 'package:puranegane_lyrics_app/Widget/CustomDrawer/custom_drawer.dart';
import 'package:puranegane_lyrics_app/Widget/custom_textfield.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomePageController cntHome = Get.put(HomePageController());
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  void openDrawer() {
    _scaffoldKey.currentState?.openDrawer();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      drawer: const Drawer(),
      endDrawer: const Drawer(),
      body: SafeArea(
        child: Stack(
          children: [

            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20,top: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      appbarTitle,
                      style: GoogleFonts.italianno(
                        fontSize: 24,
                        color: black,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    SearchTextField(
                        controller: cntHome.txtSearch,
                      hintText: "Search"
                    ),
                    const SizedBox(height: 20),
                    homeScreenCategoryData(),
                  ],
                ),
              ),
            ),

            newCustomAppBar(
                iconLeft: InkWell(
                    onTap: ()=>openDrawer(),
                    child: SvgPicture.asset(menu_svg,color: black,height: 24,width: 24)),
                isIconLeft: true,
                iconRight2: SvgPicture.asset(notification_svg,color: black,height: 24,width: 24),
                isIconRight2: true,
                title: "",
                textColor: black
            ),
            // CustomAppBar(
            //   isbackArrow: true,
            //   backIcon: SvgPicture.asset(menu_svg,color: black,height: 24,width: 24),
            //   width: Get.width,
            //   height: 60,
            //   // text: 'Home Screen',
            //   // textColor: black,
            //   appBarColor: white,
            // ),
          ],
        ),
      ),
    );
  }
  Widget homeScreenCategoryData(){
    return Obx(() =>GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: cntHome.singersList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 10,
        childAspectRatio: 0.6,
      ),
      itemBuilder: (contxt, indx){
        return  _homeCategoryList(indx);
      },
    ));
  }
  Widget _homeCategoryList(int index){
    SingersModel objHomeCat = cntHome.singersList[index];
    return SizedBox(
      // height: 150,
      // width: 200,
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          // Container(height: 200,color: Colors.red,),
          CachedNetworkImage(
              imageUrl: objHomeCat.profileImage??"",
            fit: BoxFit.fitHeight,
            errorWidget: (context, url, error) => Image.network(objHomeCat.profileImage??""),
          ),
          const SizedBox(height: 4),
          SizedBox(
            width: 150,
            child: Text(
              objHomeCat.singerName??"",
              maxLines: 2,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: black,
                fontSize: 16,
                fontFamily: fontafamily,
                fontWeight: FontWeight.w700
              ),
            ),
          ),
          Text(
            objHomeCat.nationality??"",
            style: TextStyle(
                color: stroke,
                fontSize: 14,
                fontFamily: fontafamily,
                fontWeight: FontWeight.w500
            ),
          )
        ],
      ),
    );
  }
}
// 104948